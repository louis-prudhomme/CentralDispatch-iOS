import Dependencies
import Foundation
import SharedCommonPersistence
import WineEntity

public extension GrapeVarietyRepository {
    static func mock(
        base: BaseRepository<GrapeVarietyEntity> = .mock(),
        search: @escaping @MainActor @Sendable (String) async throws -> [GrapeVarietyEntity] = { _ in fatalError("Not mocked yet") }
    ) -> GrapeVarietyRepository {
        GrapeVarietyRepository(
            base: base,
            search: search
        )
    }
}
