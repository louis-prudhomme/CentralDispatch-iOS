import Foundation

public enum WineColor: String, Sendable, Codable, CaseIterable {
    case white
    case red
    case rosé
}

public extension WineColor {
    var emoji: String {
        switch self {
            case .white: return "💛"
            case .red: return "❤️"
            case .rosé: return "🩷"
        }
    }
}
