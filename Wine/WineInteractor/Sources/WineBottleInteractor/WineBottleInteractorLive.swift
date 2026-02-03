import Foundation
import SharedCommonDependencies
import WineDomain
import WineRepository

extension WineInteractor {
    private static func sharedUpsert(wineBottle domain: WineBottle) async -> Result<WineBottle, WineInteractorError> {
        @Dependency(\.wineRepository) var repository
        @Dependency(\.date) var date
        @Dependency(\.calendar) var calendar

        guard !domain.name.isEmpty else {
            return .failure(WineInteractorError.nameEmpty)
        }
        guard !domain.pictures.isEmpty else {
            return .failure(WineInteractorError.pictureMissing)
        }

        let currentYear = calendar.component(.year, from: date())
        if let millesime = domain.millesime {
            guard millesime <= currentYear else {
                return .failure(WineInteractorError.millesimeInvalid)
            }
        }
        guard !domain.grapeVarieties.isEmpty else {
            return .failure(WineInteractorError.grapeVarietyEmpty)
        }
        guard domain.abv >= 0.0, domain.abv <= 100.0 else {
            return .failure(WineInteractorError.invalidAbv)
        }

        return await withResult(parser: WineInteractorError.init) { @MainActor in
            let entity = try await repository.upsert(domain.toEntity())
            return try entity.toDomain()
        }
    }

    static let live = WineInteractor(
        fetchAll: {
            @Dependency(\.wineRepository) var repository

            return await withResult(parser: WineInteractorError.init) { @MainActor in
                try await repository.fetchAll().map { try $0.toDomain() }
            }
        },
        fetch: { id in
            @Dependency(\.wineRepository) var repository

            return await withResult(parser: WineInteractorError.init) { @MainActor in
                guard let entity = try await repository.fetch(id) else {
                    throw WineInteractorError.notFound
                }

                return try entity.toDomain()
            }
        },
        create: { partialWine in
            @Dependency(\.wineRepository) var repository
            @Dependency(\.date) var date
            @Dependency(\.calendar) var calendar

            guard let bottlingLocation = partialWine.bottlingLocation else {
                return .failure(WineInteractorError.bottlingLocationMissing)
            }
            guard !partialWine.pictures.isEmpty else {
                return .failure(WineInteractorError.pictureMissing)
            }
            guard let appellation = partialWine.appellation else {
                return .failure(WineInteractorError.appellationMissing)
            }

            let completeDomain = WineBottle(
                name: partialWine.name,
                millesime: partialWine.millesime,
                abv: partialWine.abv,
                pictures: partialWine.pictures,
                bottlingLocation: bottlingLocation,
                grapeVarieties: partialWine.grapeVarieties,
                winemaker: partialWine.winemaker,
                appellation: appellation,
                wineColor: partialWine.wineColor,
                sparklingLevel: partialWine.sparklingLevel
            )
            return await sharedUpsert(wineBottle: completeDomain)
        },
        upsert: { domain in
            await sharedUpsert(wineBottle: domain)
        },
        delete: { id in
            @Dependency(\.wineRepository) var repository

            return await withResult(parser: WineInteractorError.init) {
                try await repository.delete(id)
            }
        }
    )
}
