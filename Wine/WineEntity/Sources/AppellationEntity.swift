import Foundation
import SharedCommonPersistence
import SwiftData

// Warning: Add every new entity in the schema declaration in SharedCommonModelContainer

@Model
public final class AppellationEntity: IdentifiableEntity {
    @Attribute(.unique) public var id: UUID
    @Attribute public var name: String
    @Attribute public var appellationDescription: String
    @Attribute public var rawWindow: String
    @Attribute public var createdAt: Date
    @Attribute public var colors: [String]

    @Relationship(deleteRule: .nullify) public var region: RegionEntity?
    @Relationship(deleteRule: .nullify, inverse: \GrapeVarietyEntity.appellations) public var mainGrapeVarieties: [GrapeVarietyEntity]?
    @Relationship(deleteRule: .cascade, inverse: \WineBottleEntity.appellation) public var wines: [WineBottleEntity]?

    public init(id: UUID, name: String, description: String, rawWindow: String, colors: [String], region: RegionEntity, mainGrapeVarieties: [GrapeVarietyEntity], createdAt: Date) {
        self.id = id
        self.name = name
        appellationDescription = description
        self.rawWindow = rawWindow
        self.colors = colors
        self.region = region
        self.mainGrapeVarieties = mainGrapeVarieties
        self.createdAt = createdAt
    }

    public static func idPredicate(for id: UUID) -> Predicate<AppellationEntity> {
        #Predicate<AppellationEntity> { $0.id == id }
    }
}

public extension AppellationEntity {
    func update(from entity: AppellationEntity) {
        // id is immutable, no update needed
        name = entity.name
        appellationDescription = entity.appellationDescription
        rawWindow = entity.rawWindow
        colors = entity.colors
        region = entity.region
        mainGrapeVarieties = entity.mainGrapeVarieties
        createdAt = entity.createdAt
    }
}
