import Foundation
import SharedCommonPersistence
import SwiftData

// Warning: Add every new entity in the schema declaration in SharedCommonModelContainer

@Model
public final class GrapeVarietyEntity: IdentifiableEntity {
    @Attribute(.unique) public var id: UUID
    @Attribute public var name: String
    @Attribute public var grapeVarietyDescription: String
    @Attribute public var color: String
    @Attribute public var synonyms: Set<String>
    @Attribute public var createdAt: Date

    @Relationship(deleteRule: .nullify, inverse: \WineBottleEntity.grapeVarieties) public var wines: [WineBottleEntity]?
    @Relationship(deleteRule: .nullify) public var appellations: [AppellationEntity]?

    public init(id: UUID, name: String, description: String, color: String, synonyms: Set<String>, createdAt: Date) {
        self.id = id
        self.name = name
        grapeVarietyDescription = description
        self.color = color
        self.synonyms = synonyms
        self.createdAt = createdAt
    }

    public static func idPredicate(for id: UUID) -> Predicate<GrapeVarietyEntity> {
        #Predicate<GrapeVarietyEntity> { $0.id == id }
    }
}

public extension GrapeVarietyEntity {
    func update(from entity: GrapeVarietyEntity) {
        // id is immutable, no update needed
        name = entity.name
        grapeVarietyDescription = entity.grapeVarietyDescription
        color = entity.color
        synonyms = entity.synonyms
        createdAt = entity.createdAt
    }
}
