import Foundation

public struct WineExtractedData: Equatable, Sendable {
    public var millesime: Int?
    public var abv: Double?
    public var extractedStrings: [String]
    public var pictureData: Data?

    public init(
        millesime: Int? = nil,
        abv: Double? = nil,
        extractedStrings: [String] = [],
        pictureData: Data? = nil
    ) {
        self.millesime = millesime
        self.abv = abv
        self.extractedStrings = extractedStrings
        self.pictureData = pictureData
    }

    public var suggestedName: String? {
        extractedStrings
            .first { string in
                !string.allSatisfy { $0.isNumber || $0 == "." || $0 == "%" } && string.count > 2
            }
    }
}
