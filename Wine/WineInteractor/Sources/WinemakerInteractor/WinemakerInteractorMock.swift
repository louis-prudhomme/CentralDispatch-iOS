import SharedCommonDependencies

extension WinemakerInteractor {
    static let mock = WinemakerInteractor(
        search: { _ in fatalError("WinemakerInteractor.search") },
        upsert: { _ in fatalError("WinemakerInteractor.upsert") }
    )
}
