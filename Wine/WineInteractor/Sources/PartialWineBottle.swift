import Dependencies
import Foundation

public struct PartialWineBottle: Equatable, Sendable {
    public var name: String
    public var millesime: Int
    public var abv: Double
    public var winemaker: Winemaker?
    public var grapeVarieties: [GrapeVariety]
    public var bottlingLocation: WineBottlingLocation?
    public var picture: Data?

    public init(
        name: String = "",
        millesime: Int = 1_997,
        abv: Double = 12.5,
        winemaker: Winemaker? = nil,
        grapeVarieties: [GrapeVariety] = [],
        bottlingLocation: WineBottlingLocation? = nil,
        picture: Data? = nil
    ) {
        self.name = name
        self.millesime = millesime
        self.abv = abv
        self.winemaker = winemaker
        self.grapeVarieties = grapeVarieties
        self.bottlingLocation = bottlingLocation
        self.picture = picture
    }

    public init() {
        @Dependency(\.date) var date
        @Dependency(\.calendar) var calendar

        self.init(millesime: calendar.component(.year, from: date()))
    }
}
