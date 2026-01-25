import Foundation
import WineCommonLocationClient
import WineDomain

public struct SuggestedData: Equatable {
    public var millesime: Int?
    public var abv: Double?
    public var appellationName: String?
    public var grapeVarietyNames: [String]
    public var winemakerName: String?
    public var bottlingLocationName: String?
    public var appellation: Appellation?
    public var grapeVarieties: [GrapeVariety]
    public var winemaker: Winemaker?
    public var bottlingLocation: Location?
    public var name: String?
    public var pictures: [Data]

    public init(
        millesime: Int?,
        abv: Double?,
        appellationName: String?,
        grapeVarietyNames: [String],
        winemakerName: String?,
        bottlingLocationName: String?,
        appellation: Appellation?,
        grapeVarieties: [GrapeVariety],
        winemaker: Winemaker?,
        bottlingLocation: Location?,
        name: String?,
        pictures: [Data]
    ) {
        self.millesime = millesime
        self.abv = abv
        self.appellationName = appellationName
        self.grapeVarietyNames = grapeVarietyNames
        self.winemakerName = winemakerName
        self.bottlingLocationName = bottlingLocationName
        self.appellation = appellation
        self.grapeVarieties = grapeVarieties
        self.winemaker = winemaker
        self.bottlingLocation = bottlingLocation
        self.name = name
        self.pictures = pictures
    }
}
