import Foundation

@main
enum Generator {
    static let outputPath = "Shared/SharedCommonModelContainer/Sources/DefaultWineAppellations.generated.swift"

    static func main() async {
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

        tell("Fetching French wine appellations from Hachette Vins...", level: .info)

        do {
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

            let url = URL(fileURLWithPath: workspacePath).appendingPathComponent(outputPath)
            tell("Writing to: \(url.path)", level: .info)

            do {
                try Writer.writeToFile(content: swiftCode, at: url)
                tell("Generated file: \(outputPath)", level: .info)
            } catch {
                tell("Failed to write file: \(error)", level: .error)
                throw error
            }
        } catch {
            tell("Failed to fetch appellations: \(error)", level: .error)
            fatalError("Failed to fetch appellations: \(error)")
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
                let appellations = try await finalizeAppellations(almostAppellations)

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

    static func finalizeAppellations(_ almostAppellations: [AlmostAppellation]) async throws -> [Appellation] {
        return try await withThrowingTaskGroup(of: Appellation.self) { group in
            var appellations = [Appellation]()

            for almostAppellation in almostAppellations {
                group.addTask {
                    try await finalizeAppellation(almostAppellation)
                }
            }

            for try await appellation in group {
                appellations.append(appellation)
            }

            return appellations
        }
    }

    static func finalizeAppellation(_ appellation: AlmostAppellation) async throws -> Appellation {
        let grapeVarieties = try await fetchGrapeVarieties(for: appellation.mainGrapeVarieties)

        return Appellation(
            name: appellation.name,
            description: appellation.description,
            colors: appellation.colors,
            mainGrapeVarieties: grapeVarieties,
            rawWindow: appellation.rawWindow
        )
    }

    static func fetchGrapeVarieties(for partialGrapeVarieties: [PartialGrapeVariety]) async throws -> [GrapeVariety] {
        return try await withThrowingTaskGroup(of: GrapeVariety.self) { group in
            for partialGrapeVariety in partialGrapeVarieties {
                group.addTask {
                    try await fetchGrapeVarietyDetails(for: partialGrapeVariety)
                }
            }

            var grapeVarieties = [GrapeVariety]()
            for try await grapeVariety in group {
                grapeVarieties.append(grapeVariety)
            }
            return grapeVarieties
        }
    }

    static func fetchGrapeVarietyDetails(for partialGrapeVariety: PartialGrapeVariety) async throws -> GrapeVariety {
        tell("Fetching details for grape variety: \(partialGrapeVariety.name)", level: .debug)

        return try await Scraper.scrapeGrapeVariety(name: partialGrapeVariety.name, slug: partialGrapeVariety.slug)
    }
}
