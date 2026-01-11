import Foundation
import SharedCommonDependencies
import WineDomain

public struct WinemakerInteractor: Sendable {
    public var search: @Sendable (String) async -> Result<[Winemaker], WineInteractorError>
    public var upsert: @Sendable (Winemaker) async -> Result<Winemaker, WineInteractorError>

    public init(
        search: @escaping @Sendable (String) async -> Result<[Winemaker], WineInteractorError>,
        upsert: @escaping @Sendable (Winemaker) async -> Result<Winemaker, WineInteractorError>
    ) {
        self.search = search
        self.upsert = upsert
    }
}

// MARK: - Dependency Registration

extension WinemakerInteractor: DependencyKey {
    public static let liveValue = WinemakerInteractor.live
    public static let testValue = WinemakerInteractor.mock
    public static let previewValue = WinemakerInteractor.mock
}

public extension DependencyValues {
    var winemakerInteractor: WinemakerInteractor {
        get { self[WinemakerInteractor.self] }
        set { self[WinemakerInteractor.self] = newValue }
    }
}
