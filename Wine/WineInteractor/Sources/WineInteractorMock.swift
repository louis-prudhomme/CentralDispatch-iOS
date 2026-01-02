import SharedCommonDependencies

extension WineInteractor {
    static let mock = WineInteractor(
        fetchAll: { fatalError("WineInteractor.fetchAll") },
        fetchAllWinemakers: { _ in fatalError("WineInteractor.fetchAllWinemakers") },
        fetchAllGrapeVarieties: { _ in fatalError("WineInteractor.fetchAllGrapeVarieties") },
        fetch: { _ in fatalError("WineInteractor.fetch") },
        upsert: { _ in fatalError("WineInteractor.upsert") },
        upsertWinemaker: { _ in fatalError("WineInteractor.upsertWinemaker") },
        upsertGrapeVariety: { _ in fatalError("WineInteractor.upsertGrapeVariety") },
        delete: { _ in fatalError("WineInteractor.delete") }
    )
}
