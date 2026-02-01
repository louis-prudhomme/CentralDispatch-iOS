import Dependencies
import Foundation
import SharedCommonDomain

public struct Vineyard: Interactable {
    public let id: UUID
    public let name: String
    public let description: String
    public let soilAndClimate: String
    public let history: String
    public let country: Country
    public let createdAt: Date

    public init(id: UUID, name: String, description: String = "", soilAndClimate: String = "", history: String = "", country: Country, createdAt: Date) {
        self.id = id
        self.name = name
        self.description = description
        self.soilAndClimate = soilAndClimate
        self.history = history
        self.country = country
        self.createdAt = createdAt
    }
}

public extension Vineyard {
    init(name: String, description: String = "", soilAndClimate: String = "", history: String = "", country: Country) {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        self.init(id: uuid(), name: name, description: description, soilAndClimate: soilAndClimate, history: history, country: country, createdAt: date())
    }
}
