import Foundation
import WineDomain

public struct SuggestedData: Equatable {
    public var millesime: Int?
    public var abv: Double?
    public var appellationName: String?
    public var grapeVarietyNames: [String]
    public var winemakerName: String?
    public var appellation: Appellation?
    public var grapeVarieties: [GrapeVariety]
    public var winemaker: Winemaker?
    public var name: String?
    public var picture: Data?

    public init(millesime: Int?, abv: Double?, appellationName: String?, grapeVarietyNames: [String], winemakerName: String?, appellation: Appellation?, grapeVarieties: [GrapeVariety], winemaker: Winemaker?, name: String?, picture: Data?) {
        self.millesime = millesime
        self.abv = abv
        self.appellationName = appellationName
        self.grapeVarietyNames = grapeVarietyNames
        self.winemakerName = winemakerName
        self.appellation = appellation
        self.grapeVarieties = grapeVarieties
        self.winemaker = winemaker
        self.name = name
        self.picture = picture
    }
}
