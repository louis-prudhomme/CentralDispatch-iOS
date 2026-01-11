import SharedCommonDependencies

extension GrapeVarietyInteractor {
    static let mock = GrapeVarietyInteractor(
        search: { _ in fatalError("GrapeVarietyInteractor.search") },
        upsert: { _ in fatalError("GrapeVarietyInteractor.upsert") }
    )
}
