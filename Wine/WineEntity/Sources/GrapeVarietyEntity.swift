import Foundation
import SharedCommonPersistence
import SwiftData

// Warning: Add every new entity in the schema declaration in SharedCommonModelContainer

@Model
public final class GrapeVarietyEntity: IdentifiableEntity {
    @Attribute(.unique) public var id: UUID
    @Attribute public var name: String
    @Attribute public var createdAt: Date

    @Relationship(deleteRule: .nullify, inverse: \WineBottleEntity.grapeVarieties) public var wines: [WineBottleEntity]?

    public init(id: UUID, name: String, createdAt: Date) {
        self.id = id
        self.name = name
        self.createdAt = createdAt
    }

    public static func idPredicate(for id: UUID) -> Predicate<GrapeVarietyEntity> {
        #Predicate<GrapeVarietyEntity> { $0.id == id }
    }
}

public extension GrapeVarietyEntity {
    static func new(id: UUID, name: String, createdAt: Date) -> GrapeVarietyEntity {
        return GrapeVarietyEntity(id: id, name: name, createdAt: createdAt)
    }

    func update(from entity: GrapeVarietyEntity) {
        // id is immutable, no update needed
        name = entity.name
        createdAt = entity.createdAt
    }
}
