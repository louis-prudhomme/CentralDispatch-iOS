import Foundation

public enum SparklingLevel: Int, Sendable, Codable, CaseIterable {
    case tranquille = 0
    case perlant = 1
    case effervescent = 2
    case mousseux = 3

    public var displayName: String {
        switch self {
            case .tranquille: "Tranquille"
            case .perlant: "Perlant"
            case .effervescent: "Effervescent"
            case .mousseux: "Mousseux"
        }
    }
}
