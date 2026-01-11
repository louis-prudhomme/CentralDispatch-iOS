import SharedCommonDependencies

extension AppellationInteractor {
    static let mock = AppellationInteractor(
        search: { _ in fatalError("AppellationInteractor.search") },
        upsert: { _ in fatalError("AppellationInteractor.upsert") },
        upsertRegion: { _ in fatalError("AppellationInteractor.upsertRegion") },
        upsertVineyard: { _ in fatalError("AppellationInteractor.upsertVineyard") },
        upsertCountry: { _ in fatalError("AppellationInteractor.upsertCountry") }
    )
}
