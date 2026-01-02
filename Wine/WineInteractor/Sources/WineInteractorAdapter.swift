import Foundation
import WineDomain
import WineRepository

// MARK: - Entity → Domain

public extension WinemakerEntity {
    func toDomain() -> Winemaker {
        Winemaker(
            id: id,
            name: name,
            createdAt: createdAt
        )
    }
}

public extension WineBottleEntity {
    func toDomain() -> WineBottle {
        WineBottle(
            id: id,
            name: name,
            millesime: millesime,
            grapeVarieties: grapeVarieties.map { $0.toDomain() },
            createdAt: createdAt,
            winemaker: winemaker?.toDomain()
        )
    }
}

public extension GrapeVarietyEntity {
    func toDomain() -> GrapeVariety {
        GrapeVariety(
            id: id,
            name: name,
            createdAt: createdAt
        )
    }
}

// MARK: - Domain → Entity

public extension Winemaker {
    /// Creates a new Entity instance from this Domain model.
    func toEntity() -> WinemakerEntity {
        WinemakerEntity(
            id: id,
            name: name,
            createdAt: createdAt
        )
    }
}

public extension WineBottle {
    /// Creates a new Entity instance from this Domain model.
    func toEntity() -> WineBottleEntity {
        WineBottleEntity(
            id: id,
            name: name,
            millesime: millesime,
            grapeVarieties: grapeVarieties.map { $0.toEntity() },
            createdAt: createdAt,
            winemaker: winemaker?.toEntity()
        )
    }
}

public extension GrapeVariety {
    /// Creates a new Entity instance from this Domain model.
    func toEntity() -> GrapeVarietyEntity {
        GrapeVarietyEntity(
            id: id,
            name: name,
            createdAt: createdAt
        )
    }
}
