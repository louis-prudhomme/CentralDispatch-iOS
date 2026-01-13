// This file is auto-generated. Do not edit manually.
// Run `cd Wine/WineCommonLocationClient && WORKSPACE_ROOT=../../.. tuist run WineCommonLocationClientGenerator` to regenerate
// Or: `tuist run WineCommonLocationClientGenerator <workspace-path>`
// Generated on: 2026-01-13T20:28:58Z

import Foundation

/// A default wine-producing country for database seeding
public struct DefaultWineCountry: Sendable {
    public let name: String
    public let code: String

    public init(name: String, code: String) {
        self.name = name
        self.code = code
    }
}

/// Pre-populated list of major wine-producing countries
public let defaultWineProducingCountries: [DefaultWineCountry] = [
    DefaultWineCountry(
        name: "Argentina",
        code: "AR"
    ),
    DefaultWineCountry(
        name: "Australia",
        code: "AU"
    ),
    DefaultWineCountry(
        name: "Chile",
        code: "CL"
    ),
    DefaultWineCountry(
        name: "France",
        code: "FR"
    ),
    DefaultWineCountry(
        name: "Germany",
        code: "DE"
    ),
    DefaultWineCountry(
        name: "Italy",
        code: "IT"
    ),
    DefaultWineCountry(
        name: "New Zealand",
        code: "NZ"
    ),
    DefaultWineCountry(
        name: "Portugal",
        code: "PT"
    ),
    DefaultWineCountry(
        name: "South Africa",
        code: "ZA"
    ),
    DefaultWineCountry(
        name: "Spain",
        code: "ES"
    ),
    DefaultWineCountry(
        name: "United States",
        code: "US"
    )
]
