import Dependencies
import Foundation
import SharedCommonPersistence
import WineEntity

public extension AppellationRepository {
    static func mock(
        base: BaseRepository<AppellationEntity> = .mock(),
        search: @escaping @MainActor @Sendable (String) async throws -> [AppellationEntity] = { _ in fatalError("Not mocked yet") },
        upsertRegion: @escaping @MainActor @Sendable (RegionEntity) async throws -> RegionEntity = { _ in fatalError("Not mocked yet") },
        upsertVineyard: @escaping @MainActor @Sendable (VineyardEntity) async throws -> VineyardEntity = { _ in fatalError("Not mocked yet") },
        upsertCountry: @escaping @MainActor @Sendable (CountryEntity) async throws -> CountryEntity = { _ in fatalError("Not mocked yet") }
    ) -> AppellationRepository {
        AppellationRepository(
            base: base,
            search: search,
            upsertRegion: upsertRegion,
            upsertVineyard: upsertVineyard,
            upsertCountry: upsertCountry
        )
    }
}
