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
                color: .\(grapeVariety.color?.rawValue ?? "unknown"),
                synonyms: [
                    \(grapeVariety.synonyms.map { "\"\($0)\"" }.joined(separator: ", "))
                ]
            )
        """
    }
}

// MARK: - Template Filling

private extension Writer {
    // swiftlint:disable:next function_body_length
    private static func fillInTemplate(with vineyards: [Vineyard], timestamp: String) -> String {
        """
        // This file is auto-generated. Do not edit manually.
        // Run `cd Wine/WineCommonWineAppellationGenerator && tuist run WineCommonWineAppellationGenerator <workspace-path>` to regenerate
        // Generated on: \(timestamp)

        import Foundation

        /// A default wine vineyard (e.g., Alsace, Bordeaux, Burgundy)
        struct DefaultWineVineyard: Sendable {
            let name: String
            let soilAndClimate: String
            let history: String
            let regions: [DefaultWineRegion]
            
            init(name: String, soilAndClimate: String, history: String, regions: [DefaultWineRegion]) {
                self.name = name
                self.soilAndClimate = soilAndClimate
                self.history = history
                self.regions = regions
            }
        }

        /// A default wine region within a vineyard
        struct DefaultWineRegion: Sendable {
            let name: String
            let appellations: [DefaultWineAppellation]
            
            init(name: String, appellations: [DefaultWineAppellation]) {
                self.name = name
                self.appellations = appellations
            }
        }

        /// A default wine appellation for database seeding
        struct DefaultWineAppellation: Sendable {
            let name: String
            let description: String
            let rawWindow: String
            let colors: [WineColor]
            let mainGrapeVarieties: [GrapeVariety]
            
            init(name: String, description: String, rawWindow: String, colors: [WineColor], mainGrapeVarieties: [GrapeVariety]) {
                self.name = name
                self.description = description
                self.colors = colors
                self.mainGrapeVarieties = mainGrapeVarieties
                self.rawWindow = rawWindow
            }
        }

        /// A grape variety used in wine appellations
        struct GrapeVariety: Sendable {
            let name: String
            let description: String
            let color: GrapeVarietyColor
            let synonyms: [String]
            
            init(name: String, description: String, color: GrapeVarietyColor, synonyms: [String]) {
                self.name = name
                self.description = description
                self.color = color
                self.synonyms = synonyms
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
            case grey
        }

        // swiftlint:disable line_length
        /// Pre-populated list of major French wine vineyards with their regions
        let defaultFrenchVineyards = [
            \(vineyards.map { formatVineyardCode($0) }.joined(separator: ",\n"))
        ]
        // swiftlint:enable line_length

        """
    }
}
