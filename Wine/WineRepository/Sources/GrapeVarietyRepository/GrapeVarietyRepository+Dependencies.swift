import Dependencies
import Foundation
import SharedCommonPersistence
import SwiftData
import WineEntity

public struct GrapeVarietyRepository: Sendable {
    public let base: BaseRepository<GrapeVarietyEntity>
    public let search: @MainActor @Sendable (String) async throws -> [GrapeVarietyEntity]
}

// MARK: - Convenience Accessors

public extension GrapeVarietyRepository {
    var fetchAll: @MainActor @Sendable () async throws -> [GrapeVarietyEntity] { base.fetchAll }
    var fetch: @MainActor @Sendable (UUID) async throws -> GrapeVarietyEntity? { base.fetch }
    var upsert: @MainActor @Sendable (GrapeVarietyEntity) async throws -> GrapeVarietyEntity { base.upsert }
    var delete: @MainActor @Sendable (UUID) async throws -> Void { base.delete }
}

// MARK: - Dependency Registration

extension GrapeVarietyRepository: DependencyKey {
    public static let liveValue = Self.live()
    public static let testValue = Self.mock()
    public static let previewValue = Self.mock()
}

public extension DependencyValues {
    var grapeVarietyRepository: GrapeVarietyRepository {
        get { self[GrapeVarietyRepository.self] }
        set { self[GrapeVarietyRepository.self] = newValue }
    }
}
