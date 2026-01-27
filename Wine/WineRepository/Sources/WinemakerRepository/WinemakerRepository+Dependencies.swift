import Dependencies
import Foundation
import SharedCommonPersistence
import SwiftData
import WineEntity

public struct WinemakerRepository: Sendable {
    public let base: BaseRepository<WinemakerEntity>
    public let search: @MainActor @Sendable (String) async throws -> [WinemakerEntity]
}

// MARK: - Convenience Accessors

public extension WinemakerRepository {
    var fetchAll: @MainActor @Sendable () async throws -> [WinemakerEntity] {
        base.fetchAll
    }

    var fetch: @MainActor @Sendable (UUID) async throws -> WinemakerEntity? {
        base.fetch
    }

    var upsert: @MainActor @Sendable (WinemakerEntity) async throws -> WinemakerEntity {
        base.upsert
    }

    var delete: @MainActor @Sendable (UUID) async throws -> Void {
        base.delete
    }
}

// MARK: - Dependency Registration

extension WinemakerRepository: DependencyKey {
    public static let liveValue = Self.live()
    public static let testValue = Self.mock()
    public static let previewValue = Self.mock()
}

public extension DependencyValues {
    var winemakerRepository: WinemakerRepository {
        get { self[WinemakerRepository.self] }
        set { self[WinemakerRepository.self] = newValue }
    }
}
