import Foundation
import WineDomain

// MARK: - Raw

public struct WineExtractedData: Equatable, Sendable {
    public var millesime: Int?
    public var abv: Double?
    public var extractedStrings: [String]

    public init(
        millesime: Int? = nil,
        abv: Double? = nil,
        extractedStrings: [String] = []
    ) {
        self.millesime = millesime
        self.abv = abv
        self.extractedStrings = extractedStrings
    }
}

// MARK: - Confirmed

public struct WineConfirmedExtractedData: Equatable, Sendable {
    public var millesime: Int?
    public var abv: Double?
    public var appellationName: String?
    public var grapeVarietyNames: [String]
    public var winemakerName: String?
    public var appellation: Appellation?
    public var grapeVarieties: [GrapeVariety]
    public var winemaker: Winemaker?
    public var name: String?
    public var pictures: [Data]

    public init(
        millesime: Int? = nil,
        abv: Double? = nil,
        appellationName: String? = nil,
        grapeVarietyNames: [String] = [],
        winemakerName: String? = nil,
        appellation: Appellation? = nil,
        grapeVarieties: [GrapeVariety] = [],
        winemaker: Winemaker? = nil,
        name: String? = nil,
        pictures: [Data] = []
    ) {
        self.millesime = millesime
        self.abv = abv
        self.appellationName = appellationName
        self.grapeVarietyNames = grapeVarietyNames
        self.winemakerName = winemakerName
        self.appellation = appellation
        self.grapeVarieties = grapeVarieties
        self.winemaker = winemaker
        self.name = name
        self.pictures = pictures
    }
}
