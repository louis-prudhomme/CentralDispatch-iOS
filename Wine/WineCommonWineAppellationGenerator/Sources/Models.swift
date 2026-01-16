import Foundation

// MARK: - Data Models

struct BaseVineyard: Codable {
    let slug: String
}

struct PartialVineyard: Codable {
    let name: String
    let regions: [PartialRegion]
}

struct PartialRegion: Codable {
    let name: String
    let appellations: [PartialAppellation]
}

struct PartialAppellation: Codable {
    let name: String
    let slug: String
}

struct Vineyard: Codable {
    let name: String
    let soilAndClimate: String
    let history: String
    let regions: [Region]
}

struct Region: Codable {
    let name: String
    let appellations: [Appellation]
}

struct Appellation: Codable {
    let name: String
    let description: String
    let colors: [WineColor]
    let mainGrapeVarieties: [GrapeVariety]
    let rawWindow: String
}

struct GrapeVariety: Codable {
    let name: String
    let description: String
}

enum WineColor: Codable {
    case red
    case white
    case rosé
    case whiteSparkling
    case roséSparkling
    case redSparkling
}

// MARK: - Errors

enum ParserError: Error, Codable {
    case invalidHTML
    case parsingFailed(reason: String)
}
