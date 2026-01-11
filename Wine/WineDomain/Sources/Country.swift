import Dependencies
import Foundation
import SharedCommonDomain

public struct Country: Interactable {
    public let id: UUID
    public let name: String
    public let code: String
    public let createdAt: Date

    public init(id: UUID, name: String, code: String, createdAt: Date) {
        self.id = id
        self.name = name
        self.code = code
        self.createdAt = createdAt
    }
}

public extension Country {
    init(name: String, code: String) {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        self.init(id: uuid(), name: name, code: code, createdAt: date())
    }
}

public extension Country {
    var asEmoji: String {
        let baseFlagScalar: UInt32 = 127_397

        guard let countryCode else { return "🏴" }

        return countryCode
            .uppercased()
            .unicodeScalars
            .compactMap { scalar in
                return UnicodeScalar(baseFlagScalar + scalar.value)
            }
            .map { String($0) }
            .joined()
    }
}
