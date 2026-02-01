import Dependencies
import Foundation
import SharedCommonDomain

public struct Appellation: Interactable {
    public let id: UUID
    public let name: String
    public let description: String
    public let colors: [WineColor]
    public let mainGrapeVarieties: [GrapeVariety]
    public let rawWindow: String
    public let region: Region
    public let createdAt: Date

    public init(id: UUID, name: String, description: String = "", colors: [WineColor] = [], mainGrapeVarieties: [GrapeVariety] = [], rawWindow: String = "", region: Region, createdAt: Date) {
        self.id = id
        self.name = name
        self.description = description
        self.colors = colors
        self.mainGrapeVarieties = mainGrapeVarieties
        self.rawWindow = rawWindow
        self.region = region
        self.createdAt = createdAt
    }
}

public extension Appellation {
    init(name: String, description: String = "", colors: [WineColor] = [], mainGrapeVarieties: [GrapeVariety] = [], rawWindow: String = "", region: Region) {
        @Dependency(\.uuid) var uuid
        @Dependency(\.date) var date

        self.init(id: uuid(), name: name, description: description, colors: colors, mainGrapeVarieties: mainGrapeVarieties, rawWindow: rawWindow, region: region, createdAt: date())
    }
}
