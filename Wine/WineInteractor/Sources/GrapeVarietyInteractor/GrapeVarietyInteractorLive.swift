import Foundation
import SharedCommonDependencies
import WineDomain
import WineRepository

extension GrapeVarietyInteractor {
    static let live = GrapeVarietyInteractor(
        search: { searchText in
            @Dependency(\.grapeVarietyRepository) var repository

            return await withResult(parser: WineInteractorError.init) { @MainActor in
                try await repository.search(searchText).map { $0.toDomain() }
            }
        },
        upsert: { grapeVariety in
            @Dependency(\.grapeVarietyRepository) var repository

            guard !grapeVariety.name.isEmpty else {
                return .failure(WineInteractorError.nameEmpty)
            }

            return await withResult(parser: WineInteractorError.init) { @MainActor in
                let entity = try await repository.upsert(grapeVariety.toEntity())
                return entity.toDomain()
            }
        }
    )
}
