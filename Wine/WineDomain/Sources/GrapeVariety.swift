import Dependencies
import Foundation
import SharedCommonDomain

public struct GrapeVariety: Interactable {
    public let id: UUID
    public let name: String
    public let createdAt: Date

    public init(id: UUID, name: String, createdAt: Date) {
        self.id = id
        self.name = name
        self.createdAt = createdAt
    }
}

public extension GrapeVariety {
    static func new(name: String) -> GrapeVariety {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        return GrapeVariety(id: uuid(), name: name, createdAt: date())
    }
}
