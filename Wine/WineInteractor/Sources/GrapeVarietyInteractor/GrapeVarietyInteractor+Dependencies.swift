import Foundation
import SharedCommonDependencies
import WineDomain

public struct GrapeVarietyInteractor: Sendable {
    public var search: @Sendable (String) async -> Result<[GrapeVariety], WineInteractorError>
    public var upsert: @Sendable (GrapeVariety) async -> Result<GrapeVariety, WineInteractorError>

    public init(
        search: @escaping @Sendable (String) async -> Result<[GrapeVariety], WineInteractorError>,
        upsert: @escaping @Sendable (GrapeVariety) async -> Result<GrapeVariety, WineInteractorError>
    ) {
        self.search = search
        self.upsert = upsert
    }
}

// MARK: - Dependency Registration

extension GrapeVarietyInteractor: DependencyKey {
    public static let liveValue = GrapeVarietyInteractor.live
    public static let testValue = GrapeVarietyInteractor.mock
    public static let previewValue = GrapeVarietyInteractor.mock
}

public extension DependencyValues {
    var grapeVarietyInteractor: GrapeVarietyInteractor {
        get { self[GrapeVarietyInteractor.self] }
        set { self[GrapeVarietyInteractor.self] = newValue }
    }
}
