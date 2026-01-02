import Dependencies
import Foundation
import SharedCommonDomain

public struct WineBottle: Interactable {
    public let id: UUID
    public let name: String
    public let millesime: Int
    public let abv: Double
    public let createdAt: Date
    public let winemaker: Winemaker?
    public let grapeVarieties: [GrapeVariety]

    public init(id: UUID, name: String, millesime: Int, abv: Double, grapeVarieties: [GrapeVariety], createdAt: Date, winemaker: Winemaker? = nil) {
        self.id = id
        self.name = name
        self.millesime = millesime
        self.abv = abv
        self.createdAt = createdAt
        self.winemaker = winemaker
        self.grapeVarieties = grapeVarieties
    }
}

public extension WineBottle {
    static func new(name: String, millesime: Int, abv: Double, grapeVarieties: [GrapeVariety], winemaker: Winemaker? = nil) -> WineBottle {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        return WineBottle(
            id: uuid(),
            name: name,
            millesime: millesime,
            abv: abv,
            grapeVarieties: grapeVarieties,
            createdAt: date(),
            winemaker: winemaker
        )
    }
}
