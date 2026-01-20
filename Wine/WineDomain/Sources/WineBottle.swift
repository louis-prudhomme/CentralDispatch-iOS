import Dependencies
import Foundation
import SharedCommonDomain

public struct WineBottle: Interactable {
    public let id: UUID
    public let name: String
    public let millesime: Int
    public let abv: Double
    public let pictures: [Data]
    public let bottlingLocation: WineBottlingLocation
    public let createdAt: Date
    public let winemaker: Winemaker? // TODO: a wine can probably have several winemakers
    public let grapeVarieties: [GrapeVariety]
    public let appellation: Appellation
    public let wineColor: WineColor
    public let sparklingLevel: SparklingLevel

    public init(
        id: UUID,
        name: String,
        millesime: Int,
        abv: Double,
        pictures: [Data],
        bottlingLocation: WineBottlingLocation,
        grapeVarieties: [GrapeVariety],
        winemaker: Winemaker?,
        appellation: Appellation,
        wineColor: WineColor,
        sparklingLevel: SparklingLevel,
        createdAt: Date
    ) {
        self.id = id
        self.name = name
        self.millesime = millesime
        self.abv = abv
        self.pictures = pictures
        self.bottlingLocation = bottlingLocation
        self.winemaker = winemaker
        self.grapeVarieties = grapeVarieties
        self.appellation = appellation
        self.wineColor = wineColor
        self.sparklingLevel = sparklingLevel
        self.createdAt = createdAt
    }
}

public extension WineBottle {
    init(name: String, millesime: Int, abv: Double, pictures: [Data], bottlingLocation: WineBottlingLocation, grapeVarieties: [GrapeVariety], winemaker: Winemaker?, appellation: Appellation, wineColor: WineColor, sparklingLevel: SparklingLevel) {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        self.init(
            id: uuid(),
            name: name,
            millesime: millesime,
            abv: abv,
            pictures: pictures,
            bottlingLocation: bottlingLocation,
            grapeVarieties: grapeVarieties,
            winemaker: winemaker,
            appellation: appellation,
            wineColor: wineColor,
            sparklingLevel: sparklingLevel,
            createdAt: date()
        )
    }
}
