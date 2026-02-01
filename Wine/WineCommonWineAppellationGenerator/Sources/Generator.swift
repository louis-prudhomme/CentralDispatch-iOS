import Foundation

@main
enum Generator {
    static let outputPath = "Shared/SharedCommonModelContainer/Sources/DefaultWineAppellations.generated.swift"

    static var grapeVarietyRegistry = [GrapeVariety]()

    static func main() async throws {
        let arguments = CommandLine.arguments

        let (cacheOptions, remainingArgs) = Cache.parseArguments(Array(arguments.dropFirst()))
        Cache.handleCacheOperation(cacheOptions)
        let (workspacePath, showHelp) = CLI.parseArguments(remainingArgs)

        if showHelp {
            CLI.printUsage()
            return
        }

        guard let workspacePath else {
            CLI.printUsage()
            fatalError("Workspace path is required")
        }

        try await fetchGrapeVarieties()
        try await fetchAppellations(workspaceUrl: URL(fileURLWithPath: workspacePath))
    }

    static func fetchGrapeVarieties() async throws {
        tell("Fetching grape varieties registry...", level: .info)

        let incomplete = try await Scraper.scrapeGrapeVarietiesRegistry()
        let consolidated = try await consolidateGrapeVarieties(almostGrapeVarieties: incomplete)
        grapeVarietyRegistry = finalizeGrapeVariety(finalizeGrapeVariety(consolidated))

        tell("Retrieved \(grapeVarietyRegistry.count) grape varieties in registry", level: .info)
    }

    static func consolidateGrapeVarieties(almostGrapeVarieties: [AlmostGrapeVariety]) async throws -> [GrapeVariety] {
        return try await withThrowingTaskGroup(of: GrapeVariety.self) { group in
            for almostGrapeVariety in almostGrapeVarieties {
                group.addTask {
                    if let dedicatedPageSlug = almostGrapeVariety.dedicatedPageSlug {
                        let details = try await Scraper.scrapeGrapeVarietyDetails(name: almostGrapeVariety.name, slug: dedicatedPageSlug)
                        return GrapeVariety(
                            name: almostGrapeVariety.name,
                            description: details.description,
                            color: details.color,
                            synonyms: Set(almostGrapeVariety.synonyms),
                            dedicatedPageSlug: dedicatedPageSlug
                        )
                    } else {
                        return GrapeVariety(
                            name: almostGrapeVariety.name,
                            description: almostGrapeVariety.description,
                            color: almostGrapeVariety.color,
                            synonyms: Set(almostGrapeVariety.synonyms),
                            dedicatedPageSlug: nil
                        )
                    }
                }
            }

            var grapeVarieties = [GrapeVariety]()
            for try await grapeVariety in group {
                grapeVarieties.append(grapeVariety)
            }
            return grapeVarieties
        }
    }

    static func finalizeGrapeVariety(_ consolidated: [GrapeVariety]) -> [GrapeVariety] {
        var deduplicatedGrapeVarieties = [GrapeVariety]()
        for current in consolidated {
            if let existing = deduplicatedGrapeVarieties.first(where: { $0.synonyms.contains(current.name) && $0.color == current.color }) {
                var updatedSynonyms = existing.synonyms
                updatedSynonyms.insert(current.name)
                current.synonyms.forEach { updatedSynonyms.insert($0) }
                updatedSynonyms.remove(existing.name)

                let descriptionToKeep = existing.description.count >= current.description.count ? existing.description : current.description

                let merged = GrapeVariety(
                    name: existing.name,
                    description: descriptionToKeep,
                    color: existing.color,
                    synonyms: updatedSynonyms,
                    dedicatedPageSlug: existing.dedicatedPageSlug ?? current.dedicatedPageSlug
                )

                if let index = deduplicatedGrapeVarieties.firstIndex(where: { $0.name == existing.name }) {
                    deduplicatedGrapeVarieties[index] = merged
                }
            } else {
                deduplicatedGrapeVarieties.append(current)
            }
        }

        return deduplicatedGrapeVarieties
    }

    static func fetchAppellations(workspaceUrl: URL) async throws {
        tell("Fetching French wine appellations from Hachette Vins...", level: .info)

        let baseVineyards = try await Generator.fetchBaseVineyards()
        guard !baseVineyards.isEmpty else {
            tell("Failed to retrieve any vineyards from main page", level: .error)
            fatalError("No vineyards retrieved from main page")
        }

        let partialVineyards = try await Generator.fetchPartialVineyards(for: baseVineyards)
        guard !partialVineyards.isEmpty else {
            tell("Failed to retrieve any vineyards", level: .error)
            fatalError("No vineyards retrieved")
        }

        tell("Retrieved \(partialVineyards.count) vineyards", level: .info)

        tell("Consolidating vineyard details...", level: .info)
        let vineyards = try await consolidateVineyards(from: partialVineyards)
        tell("Consolidated \(vineyards.count) vineyards with full details", level: .info)

        let swiftCode = Writer.generateSwiftFile(from: vineyards)

        let url = workspaceUrl.appendingPathComponent(outputPath)
        tell("Writing to: \(url.path)", level: .info)

        do {
            try Writer.writeToFile(content: swiftCode, at: url)
            tell("Generated file: \(outputPath)", level: .info)
        } catch {
            tell("Failed to write file: \(error)", level: .error)
            throw error
        }
    }

    // MARK: - Fetching and Consolidation

    static func fetchBaseVineyards() async throws -> [BaseVineyard] {
        let mainURL = "https://www.hachette-vins.com/tout-sur-le-vin/regions-vins/"
        let mainPage = try await Scraper.scrapeMainPage(url: mainURL)
        return try Parser.parseMainPage(html: mainPage)
    }

    static func fetchPartialVineyards(for baseVineyards: [BaseVineyard]) async throws -> [PartialVineyard] {
        return try await withThrowingTaskGroup(of: PartialVineyard.self) { group in
            for vineyard in baseVineyards {
                group.addTask {
                    try await Scraper.scrapeVineyard(slug: vineyard.slug)
                }
            }

            var partialVineyards = [PartialVineyard]()
            for try await vineyard in group {
                partialVineyards.append(vineyard)
            }
            return partialVineyards
        }
    }

    static func consolidateVineyards(from partialVineyards: [PartialVineyard]) async throws -> [Vineyard] {
        var vineyards = [Vineyard]()

        for partialVineyard in partialVineyards {
            var regions = [Region]()

            for partialRegion in partialVineyard.regions {
                let almostAppellations = try await fetchAppellations(for: partialRegion.appellations)
                let appellations = try finalizeAppellations(almostAppellations)

                let region = Region(
                    name: partialRegion.name,
                    appellations: appellations
                )
                regions.append(region)
            }

            let vineyard = Vineyard(
                name: partialVineyard.name,
                description: partialVineyard.description,
                soilAndClimate: partialVineyard.soilAndClimate,
                history: partialVineyard.history,
                regions: regions
            )
            vineyards.append(vineyard)
        }

        return vineyards
    }

    static let forbiddenAppellationSlugs = ["/tout-sur-le-vin/appellations-vins/9056/roussette-de-bugey"]

    static func fetchAppellations(for partialAppellations: [PartialAppellation]) async throws -> [AlmostAppellation] {
        return try await withThrowingTaskGroup(of: AlmostAppellation.self) { group in
            var appellations = [AlmostAppellation]()

            for partialAppellation in partialAppellations where !forbiddenAppellationSlugs.contains(partialAppellation.slug) {
                group.addTask {
                    try await consolidateAppellation(partialAppellation)
                }
            }

            for try await appellation in group {
                appellations.append(appellation)
            }

            return appellations
        }
    }

    static func consolidateAppellation(_ partialAppellation: PartialAppellation) async throws -> AlmostAppellation {
        tell("Fetching details for appellation: \(partialAppellation.name)", level: .debug)
        return try await Scraper.scrapeAppellation(name: partialAppellation.name, slug: partialAppellation.slug)
    }

    static func finalizeAppellations(_ almostAppellations: [AlmostAppellation]) throws -> [Appellation] {
        return try almostAppellations.map(finalizeAppellation)
    }

    static func finalizeAppellation(_ appellation: AlmostAppellation) throws -> Appellation {
        let grapeVarieties = try fetchGrapeVarieties(for: appellation.mainGrapeVarieties)

        return Appellation(
            name: appellation.name,
            description: appellation.description,
            colors: appellation.colors,
            mainGrapeVarieties: Set(grapeVarieties),
            rawWindow: appellation.rawWindow
        )
    }

    static func fetchGrapeVarieties(for partialGrapeVarieties: [PartialGrapeVariety]) throws -> [GrapeVariety] {
        var grapeVarieties = [GrapeVariety]()

        for partial in partialGrapeVarieties {
            if let matchedBySlug = grapeVarietyRegistry.first(where: { $0.dedicatedPageSlug == partial.slug }) {
                grapeVarieties.append(matchedBySlug)
            } else if let matchedByName = grapeVarietyRegistry.first(where: { $0.name.lowercased() == partial.name.lowercased() }) {
                grapeVarieties.append(matchedByName)
            } else if let matchedBySynonym = grapeVarietyRegistry.first(where: { $0.synonyms.map { $0.lowercased() }.contains(partial.name.lowercased()) }) {
                grapeVarieties.append(matchedBySynonym)
            } else {
                throw ParserError.unknownGrapeVariety(name: partial.name)
            }
        }

        return grapeVarieties
    }
}
