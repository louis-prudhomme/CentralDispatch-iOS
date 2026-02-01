import Dependencies
import Foundation
import SharedCommonDomain

public struct GrapeVariety: Interactable {
    public let id: UUID
    public let name: String
    public let description: String
    public let color: GrapeVarietyColor
    public let synonyms: Set<String>
    public let createdAt: Date

    public init(id: UUID, name: String, description: String, color: GrapeVarietyColor, synonyms: Set<String>, createdAt: Date) {
        self.id = id
        self.name = name
        self.description = description
        self.color = color
        self.synonyms = synonyms
        self.createdAt = createdAt
    }
}

public extension GrapeVariety {
    init(name: String, description: String, color: GrapeVarietyColor, synonyms: Set<String>) {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        self.init(id: uuid(), name: name, description: description, color: color, synonyms: synonyms, createdAt: date())
    }
}

public enum GrapeVarietyColor: String, Interactable {
    case black
    case white
    case pink
    case grey

    public var id: String { rawValue }
}
