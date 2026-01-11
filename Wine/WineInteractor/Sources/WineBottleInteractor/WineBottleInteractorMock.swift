import SharedCommonDependencies

extension WineInteractor {
    static let mock = WineInteractor(
        fetchAll: { fatalError("WineInteractor.fetchAll") },
        fetch: { _ in fatalError("WineInteractor.fetch") },
        create: { _ in fatalError("WineInteractor.create") },
        upsert: { _ in fatalError("WineInteractor.upsert") },
        delete: { _ in fatalError("WineInteractor.delete") }
    )
}
