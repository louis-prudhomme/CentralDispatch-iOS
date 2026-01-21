import Dependencies
import Foundation

public struct PartialWineBottle: Equatable, Sendable {
    public var name: String
    public var millesime: Int
    public var abv: Double
    public var winemaker: Winemaker?
    public var grapeVarieties: [GrapeVariety]
    public var appellation: Appellation?
    public var bottlingLocation: WineBottlingLocation?
    public var pictures: [Data]
    public var wineColor: WineColor
    public var sparklingLevel: SparklingLevel

    public init(
        name: String = "",
        millesime: Int = 1_997,
        abv: Double = 12.5,
        winemaker: Winemaker? = nil,
        grapeVarieties: [GrapeVariety] = [],
        appellation: Appellation? = nil,
        bottlingLocation: WineBottlingLocation? = nil,
        pictures: [Data] = [],
        wineColor: WineColor = .red,
        sparklingLevel: SparklingLevel = .tranquille
    ) {
        self.name = name
        self.millesime = millesime
        self.abv = abv
        self.winemaker = winemaker
        self.grapeVarieties = grapeVarieties
        self.appellation = appellation
        self.bottlingLocation = bottlingLocation
        self.pictures = pictures
        self.wineColor = wineColor
        self.sparklingLevel = sparklingLevel
    }

    public init() {
        @Dependency(\.date) var date
        @Dependency(\.calendar) var calendar

        self.init(millesime: calendar.component(.year, from: date()))
    }
}
