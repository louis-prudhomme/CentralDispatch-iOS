import Foundation

enum Writer {
    static func generateSwiftFile(from vineyards: [Vineyard]) -> String {
        let dateFormatter = ISO8601DateFormatter()
        // swiftlint:disable:next use_dependency_for_date
        let timestamp = dateFormatter.string(from: Date())

        return fillInTemplate(with: vineyards, timestamp: timestamp)
    }

    static func writeToFile(content: String, at url: URL) throws {
        let directory = url.deletingLastPathComponent()
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
        try content.write(to: url, atomically: true, encoding: .utf8)
    }
}

// MARK: - Code Formatting

private extension Writer {
    private static func formatAppellationCode(_ flattener: AppellationFlattener) -> String {
        let appellation = flattener.appellation
        let regionCode = formatRegionCode(flattener)

        return """
            DefaultWineAppellation(
                id: UUID(uuidString: \"\(appellation.id)\")!,
                name: \"\(appellation.name)\",
                description: \"\(appellation.description)\",
                rawWindow: \"\(appellation.rawWindow)\",
                colors: [\(appellation.colors.map { ".\($0.rawValue)" }.joined(separator: ", "))],
                mainGrapeVarieties: [
                    \(appellation.mainGrapeVarieties.map { formatGrapeVarietyCode($0) }.joined(separator: ",\n"))
                ],
                region: \(regionCode)
            )
        """
    }

    private static func formatRegionCode(_ flattener: AppellationFlattener) -> String {
        let region = flattener.region
        let vineyardCode = formatVineyardCode(flattener.vineyard)

        return """
            DefaultWineRegion(
                id: UUID(uuidString: \"\(region.id)\")!,
                name: \"\(region.name)\",
                vineyard: \(vineyardCode)
            )
        """
    }

    private static func formatVineyardCode(_ vineyard: Vineyard) -> String {
        return """
            DefaultWineVineyard(
                id: UUID(uuidString: \"\(vineyard.id)\")!,
                description: \"\(vineyard.description)\",
                name: \"\(vineyard.name)\",
                soilAndClimate: \"\(vineyard.soilAndClimate)\",
                history: \"\(vineyard.history)\"
            )
        """
    }

    private static func formatGrapeVarietyCode(_ grapeVariety: GrapeVariety) -> String {
        """
            DefaultGrapeVariety(
                id: UUID(uuidString: \"\(grapeVariety.id)\")!,
                name: \"\(grapeVariety.name)\",
                description: \"\"\"
                    \(grapeVariety.description)
                    \"\"\",
                color: .\(grapeVariety.color?.rawValue ?? "unknown"),
                synonyms: [
                    \(grapeVariety.synonyms.map { "\"\($0)\"" }.joined(separator: ", "))
                ]
            )
        """
    }
}

// MARK: - Template Filling

struct AppellationFlattener {
    let appellation: Appellation
    let region: Region
    let vineyard: Vineyard
}

private extension Writer {
    // swiftlint:disable:next function_body_length
    private static func fillInTemplate(with vineyards: [Vineyard], timestamp: String) -> String {
        var appellations = [AppellationFlattener]()
        for vineyard in vineyards {
            for region in vineyard.regions {
                for appellation in region.appellations {
                    appellations.append(.init(appellation: appellation, region: region, vineyard: vineyard))
                }
            }
        }

        return """
        // This file is auto-generated. Do not edit manually.
        // Run `cd Wine/WineCommonWineAppellationGenerator && tuist run WineCommonWineAppellationGenerator <workspace-path>` to regenerate
        // Generated on: \(timestamp)

        import Foundation

        /// A default wine appellation for database seeding
        struct DefaultWineAppellation: Sendable {
            let id: UUID
            let name: String
            let description: String
            let rawWindow: String
            let colors: [DefaultWineColor]
            let mainGrapeVarieties: [DefaultGrapeVariety]
            let region: DefaultWineRegion
        }

        /// A default wine region within a vineyard
        struct DefaultWineRegion: Sendable {
            let id: UUID
            let name: String
            let vineyard: DefaultWineVineyard
        }

        /// A default wine vineyard (e.g., Alsace, Bordeaux, Burgundy)
        struct DefaultWineVineyard: Sendable {
            let id: UUID
            let description: String
            let name: String
            let soilAndClimate: String
            let history: String
        }

        /// A grape variety used in wine appellations
        struct DefaultGrapeVariety: Sendable {
            let id: UUID
            let name: String
            let description: String
            let color: DefaultGrapeVarietyColor
            let synonyms: Set<String>
        }

        /// The color of the wine
        enum DefaultWineColor: String, Codable {
            case red
            case white
            case rosé
            case whiteSparkling
            case roséSparkling
            case redSparkling
        }

        /// A grape variety used in wine appellations
        enum DefaultGrapeVarietyColor: String, Codable {
            case black
            case white
            case pink
            case grey
        }

        // swiftlint:disable:next blanket_disable_command
        // swiftlint:disable line_length file_length
        /// Pre-populated list of French wine appellations
        let defaultFrenchAppellations = [
            \(appellations.map { formatAppellationCode($0) }.joined(separator: ",\n"))
        ]

        """
    }
}
