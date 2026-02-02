import Foundation

// MARK: - Data Models

// swiftlint:disable use_dependency_for_uuid
struct BaseVineyard: Codable {
    let slug: String
}

struct PartialVineyard: Codable {
    let name: String
    let description: String
    let soilAndClimate: String
    let history: String
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

struct PartialGrapeVariety: Codable {
    let name: String
    let slug: String
}

struct Vineyard: Codable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    let soilAndClimate: String
    let history: String
    let regions: [Region]
}

struct Region: Codable, Hashable {
    let id = UUID()
    let name: String
    let appellations: [Appellation]
}

struct Appellation: Codable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    let colors: [WineColor]
    let mainGrapeVarieties: Set<GrapeVariety>
    let type: AppellationType
    let rawWindow: String
}

struct AlmostAppellation: Codable {
    let name: String
    let description: String
    let colors: [WineColor]
    let mainGrapeVarieties: [PartialGrapeVariety]
    let type: AppellationType
    let rawWindow: String
}

enum AppellationType: String, Codable {
    case aoc
    case igp
}

struct AlmostGrapeVariety: Codable {
    let name: String
    let description: String
    let color: GrapeVarietyColor?
    let synonyms: [String]
    let dedicatedPageSlug: String?
}

struct GrapeVariety: Hashable, Codable {
    let id = UUID()
    let name: String
    let description: String
    let color: GrapeVarietyColor?
    let synonyms: Set<String>
    let dedicatedPageSlug: String?
}

struct GrapeVarietyDetails {
    let name: String
    let description: String
    let color: GrapeVarietyColor?
}

enum GrapeVarietyColor: String, Codable {
    case black
    case white
    case pink
    case grey
}

enum WineColor: String, Codable {
    case red
    case white
    case rosé
    case whiteSparkling
    case roséSparkling
    case redSparkling
}

// swiftlint:enable use_dependency_for_uuid
