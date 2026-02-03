import Foundation
import SharedCommonPersistence
import SwiftData

// Warning: Add every new entity in the schema declaration in SharedCommonModelContainer

@Model
public final class WineBottleEntity: IdentifiableEntity {
    @Attribute(.unique) public var id: UUID
    @Attribute public var name: String
    @Attribute public var millesime: Int?
    @Attribute public var abv: Double
    @Attribute public var pictures: [Data]
    @Attribute public var wineColor: String
    @Attribute public var sparklingLevel: Int

    @Attribute public var createdAt: Date

    @Relationship(deleteRule: .nullify) public var winemaker: WinemakerEntity?
    @Relationship(deleteRule: .nullify) public var grapeVarieties: [GrapeVarietyEntity]
    @Relationship(deleteRule: .nullify) public var bottlingLocation: WineBottlingLocationEntity
    @Relationship(deleteRule: .nullify) public var appellation: AppellationEntity

    public init(
        id: UUID,
        name: String,
        millesime: Int?,
        abv: Double,
        pictures: [Data],
        bottlingLocation: WineBottlingLocationEntity,
        grapeVarieties: [GrapeVarietyEntity],
        createdAt: Date,
        winemaker: WinemakerEntity?,
        appellation: AppellationEntity,
        wineColor: String,
        sparklingLevel: Int
    ) {
        self.id = id
        self.name = name
        self.millesime = millesime
        self.abv = abv
        self.pictures = pictures
        self.bottlingLocation = bottlingLocation
        self.createdAt = createdAt
        self.winemaker = winemaker
        self.grapeVarieties = grapeVarieties
        self.appellation = appellation
        self.wineColor = wineColor
        self.sparklingLevel = sparklingLevel
    }

    public static func idPredicate(for id: UUID) -> Predicate<WineBottleEntity> {
        #Predicate<WineBottleEntity> { $0.id == id }
    }
}

public extension WineBottleEntity {
    func update(from entity: WineBottleEntity) {
        // id is immutable, no update needed
        name = entity.name
        millesime = entity.millesime
        abv = entity.abv
        pictures = entity.pictures
        bottlingLocation = entity.bottlingLocation
        createdAt = entity.createdAt
        winemaker = entity.winemaker
        grapeVarieties = entity.grapeVarieties
        appellation = entity.appellation
        wineColor = entity.wineColor
        sparklingLevel = entity.sparklingLevel
    }
}
