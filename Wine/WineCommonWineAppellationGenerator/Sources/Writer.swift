import Foundation

enum Writer {
    static func generateSwiftFile(from vineyards: [Vineyard]) -> String {
        let dateFormatter = ISO8601DateFormatter()
        // swiftlint:disable:next use_dependency_for_date
        let timestamp = dateFormatter.string(from: Date())

        let countryCode = formatCountryCode(vineyards)

        return fillInTemplate(with: countryCode, timestamp: timestamp)
    }

    static func writeToFile(content: String, at url: URL) throws {
        let directory = url.deletingLastPathComponent()
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
        try content.write(to: url, atomically: true, encoding: .utf8)
    }
}

// MARK: - Code Formatting

private extension Writer {
    private static func formatCountryCode(_ vineyards: [Vineyard]) -> String {
        let vineyardsCode = vineyards.map { formatVineyardCode($0) }.joined(separator: ",\n")
        return
            """
                DefaultWineCountry(
                    name: \"France\",
                    code: \"FR\",
                    vineyards: [
                        \(vineyardsCode)
                    ]
                )
            """
    }

    private static func formatVineyardCode(_ vineyard: Vineyard) -> String {
        let regionsCode = vineyard.regions.map { formatRegionCode($0) }.joined(separator: ",\n")

        return """
            DefaultWineVineyard(
                name: \"\(vineyard.name)\",
                soilAndClimate: \"\(vineyard.soilAndClimate)\",
                history: \"\(vineyard.history)\",
                regions: [
                    \(regionsCode)
                ]
            )
        """
    }

    private static func formatRegionCode(_ region: Region) -> String {
        let appellationsCode = region.appellations.map { formatAppellationCode($0) }.joined(separator: ",\n")

        return """
            DefaultWineRegion(
                name: \"\(region.name)\",
                appellations: [
                    \(appellationsCode)
                ]
            )
        """
    }

    private static func formatAppellationCode(_ appellation: Appellation) -> String {
        """
            DefaultWineAppellation(
                name: \"\(appellation.name)\",
                description: \"\(appellation.description)\",
                rawWindow: \"\(appellation.rawWindow)\",
                colors: [\(appellation.colors.map { ".\($0.rawValue)" }.joined(separator: ", "))],
                mainGrapeVarieties: [
                    \(appellation.mainGrapeVarieties.map { formatGrapeVarietyCode($0) }.joined(separator: ",\n"))
                ]
            )
        """
    }

    private static func formatGrapeVarietyCode(_ grapeVariety: GrapeVariety) -> String {
        """
            GrapeVariety(
                name: \"\(grapeVariety.name)\",
                description: \"\"\"
                    \(grapeVariety.description)
                    \"\"\",
                color: .\(grapeVariety.color?.rawValue ?? "unknown")
            )
        """
    }
}

// MARK: - Template Filling

private extension Writer {
    // swiftlint:disable:next function_body_length
    private static func fillInTemplate(with countryCode: String, timestamp: String) -> String {
        """
        // This file is auto-generated. Do not edit manually.
        // Run `cd Wine/WineCommonWineAppellationGenerator && tuist run WineCommonWineAppellationGenerator <workspace-path>` to regenerate
        // Generated on: \(timestamp)

        import Foundation

        /// A default wine country with its vineyards
        public struct DefaultWineCountry: Sendable {
            public let name: String
            public let code: String
            public let vineyards: [DefaultWineVineyard]

            public init(name: String, code: String, vineyards: [DefaultWineVineyard]) {
                self.name = name
                self.code = code
                self.vineyards = vineyards
            }
        }

        /// A default wine vineyard (e.g., Alsace, Bordeaux, Burgundy)
        public struct DefaultWineVineyard: Sendable {
            public let name: String
            public let soilAndClimate: String
            public let history: String
            public let regions: [DefaultWineRegion]
            
            public init(name: String, soilAndClimate: String, history: String, regions: [DefaultWineRegion]) {
                self.name = name
                self.soilAndClimate = soilAndClimate
                self.history = history
                self.regions = regions
            }
        }

        /// A default wine region within a vineyard
        public struct DefaultWineRegion: Sendable {
            public let name: String
            public let appellations: [DefaultWineAppellation]
            
            public init(name: String, appellations: [DefaultWineAppellation]) {
                self.name = name
                self.appellations = appellations
            }
        }

        /// A default wine appellation for database seeding
        public struct DefaultWineAppellation: Sendable {
            public let name: String
            public let description: String
            public let rawWindow: String
            public let colors: [WineColor]
            public let mainGrapeVarieties: [GrapeVariety]
            
            public init(name: String, description: String, rawWindow: String, colors: [WineColor], mainGrapeVarieties: [GrapeVariety]) {
                self.name = name
                self.description = description
                self.colors = colors
                self.mainGrapeVarieties = mainGrapeVarieties
                self.rawWindow = rawWindow
            }
        }

        /// A grape variety used in wine appellations
        public struct GrapeVariety: Sendable {
            public let name: String
            public let description: String
            public let color: GrapeVarietyColor
            
            public init(name: String, description: String, color: GrapeVarietyColor) {
                self.name = name
                self.description = description
                self.color = color
            }
        }

        /// The color of the wine
        enum WineColor: Codable {
            case red
            case white
            case rosé
            case whiteSparkling
            case roséSparkling
            case redSparkling
        }

        /// A grape variety used in wine appellations
        enum GrapeVarietyColor: String, Codable {
            case black
            case white
            case pink
        }

        // swiftlint:disable line_length
        /// Pre-populated list of major French wine vineyards with their regions
        public let defaultWineCountry = \(countryCode)
        // swiftlint:enable line_length

        """
    }
}
