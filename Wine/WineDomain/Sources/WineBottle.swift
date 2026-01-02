import Dependencies
import Foundation
import SharedCommonDomain

public struct WineBottle: Interactable {
    public let id: UUID
    public let name: String
    public let millesime: Int
    public let abv: Double
    public let productionLocation: WineProductionLocation
    public let createdAt: Date
    public let winemaker: Winemaker?
    public let grapeVarieties: [GrapeVariety]

    public init(id: UUID, name: String, millesime: Int, abv: Double, productionLocation: WineProductionLocation, grapeVarieties: [GrapeVariety], createdAt: Date, winemaker: Winemaker? = nil) {
        self.id = id
        self.name = name
        self.millesime = millesime
        self.abv = abv
        self.productionLocation = productionLocation
        self.createdAt = createdAt
        self.winemaker = winemaker
        self.grapeVarieties = grapeVarieties
    }
}

public extension WineBottle {
    init(name: String, millesime: Int, abv: Double, productionLocation: WineProductionLocation, grapeVarieties: [GrapeVariety], winemaker: Winemaker? = nil) {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        self.init(
            id: uuid(),
            name: name,
            millesime: millesime,
            abv: abv,
            productionLocation: productionLocation,
            grapeVarieties: grapeVarieties,
            createdAt: date(),
            winemaker: winemaker
        )
    }
}
