import Dependencies
import Foundation
import SharedCommonPersistence
import WineEntity

public extension WinemakerRepository {
    static func mock(
        base: BaseRepository<WinemakerEntity> = .mock(),
        search: @escaping @MainActor @Sendable (String) async throws -> [WinemakerEntity] = { _ in fatalError("Not mocked yet") }
    ) -> WinemakerRepository {
        WinemakerRepository(
            base: base,
            search: search
        )
    }
}
