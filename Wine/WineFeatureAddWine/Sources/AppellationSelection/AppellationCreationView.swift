import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

public struct AppellationCreationView: View {
    @Bindable var store: StoreOf<AppellationCreation>

    public init(store: StoreOf<AppellationCreation>) {
        self.store = store
    }

    public var body: some View {
        countrySelectionScreen
            .navigationDestination(
                item: $store.scope(state: \.destination, action: \.destination)
            ) { destinationStore in
                switch destinationStore.case {
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
            .loadable(isLoading: store.isLoading)
            .alert($store.scope(state: \.alert, action: \.alert))
            .onAppear { store.send(.onAppear) }
    }

    // MARK: - Country Selection Screen

    @ViewBuilder private var countrySelectionScreen: some View {
        List {
            SelectionListSection(
                title: "Available Countries",
                items: store.availableCountries,
                selectedItem: store.selectedCountry,
                onSelect: { store.send(.countrySelected($0)) }
            )
            .emptyable(store.availableCountries, isLoading: store.isLoading) {
                ContentUnavailableView {
                    Label("No countries available", systemImage: "exclamationmark.triangle")
                } description: {
                    Text("There are no countries available to select, that's unexpected.")
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Add a country", systemImage: "plus") {
                    store.send(.createCountryButtonTapped)
                }
            }
        }
        .navigationTitle("Select Country")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Reusable Components

private struct SelectionListSection<Item: AppellationPart>: View {
    let title: String
    let items: [Item]
    let selectedItem: Item?
    let onSelect: (Item) -> Void

    var body: some View {
        Section(title) {
            ForEach(items) { item in
                let isSelected = selectedItem?.id == item.id
                Button {
                    onSelect(item)
                } label: {
                    HStack {
                        Text(item.name)
                            .foregroundStyle(.primary)
                        Spacer()
                        if isSelected {
                            Image(systemName: "checkmark")
                                .foregroundStyle(.tint)
                                .accessibilityHidden(true)
                        }
                    }
                    .accessibilityAddTraits(isSelected ? [.isSelected] : [])
                    .accessibilityHint("Tap to select \(item.name)")
                }
            }
        }
    }
}

// MARK: - Previews

#Preview {
    AppellationCreationView(
        store: Store(initialState: AppellationCreation.State()) {
            AppellationCreation()
        }
    )
}
