import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

public struct AppellationCoordinatorView: View {
    @Bindable var store: StoreOf<AppellationCoordinator>

    public init(store: StoreOf<AppellationCoordinator>) {
        self.store = store
    }

    public var body: some View {
        NavigationStack(path: $store.scope(state: \.destination, action: \.destination)) {
            AppellationSelectionView(
                store: store.scope(state: \.list, action: \.list)
            )
        } destination: { store in
            switch store.case {
                case let .countrySelection(countryStore):
                    CountrySelectionView(store: countryStore)

                case let .selectVineyard(vineyardStore):
                    SelectAppellationPartView(store: vineyardStore)

                case let .selectRegion(regionStore):
                    SelectAppellationPartView(store: regionStore)

                case let .addAppellation(appellationStore):
                    AddAppellationPartView(store: appellationStore)

                case let .addCountry(addCountryStore):
                    AddAppellationCountryView(store: addCountryStore)

                case let .addVineyard(addVineyardStore):
                    AddAppellationPartView(store: addVineyardStore)

                case let .addRegion(addRegionStore):
                    AddAppellationPartView(store: addRegionStore)
            }
        }
    }
}

#Preview {
    AppellationCoordinatorView(
        store: Store(initialState: AppellationCoordinator.State(existing: nil)) {
            AppellationCoordinator()
        }
    )
}
