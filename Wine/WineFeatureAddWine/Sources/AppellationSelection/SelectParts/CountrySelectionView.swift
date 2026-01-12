import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

struct CountrySelectionView: View {
    @Bindable var store: StoreOf<CountrySelection>

    init(store: StoreOf<CountrySelection>) {
        self.store = store
    }

    var body: some View {
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
        .loadable(isLoading: store.isLoading)
        .alert($store.scope(state: \.alert, action: \.alert))
        .navigationTitle("Select Country")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { store.send(.onAppear) }
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

#Preview {
    NavigationStack {
        CountrySelectionView(
            store: Store(initialState: CountrySelection.State(existing: nil)) {
                CountrySelection()
            }
        )
    }
}
