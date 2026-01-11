import Foundation
import SharedCommonDependencies
import WineDomain
import WineRepository

extension WinemakerInteractor {
    static let live = WinemakerInteractor(
        search: { searchText in
            @Dependency(\.winemakerRepository) var repository

            return await withResult(parser: WineInteractorError.init) { @MainActor in
                try await repository.search(searchText).map { $0.toDomain() }
            }
        },
        upsert: { winemaker in
            @Dependency(\.winemakerRepository) var repository

            guard !winemaker.name.isEmpty else {
                return .failure(WineInteractorError.nameEmpty)
            }

            return await withResult(parser: WineInteractorError.init) { @MainActor in
                let entity = try await repository.upsert(winemaker.toEntity())
                return entity.toDomain()
            }
        }
    )
}
