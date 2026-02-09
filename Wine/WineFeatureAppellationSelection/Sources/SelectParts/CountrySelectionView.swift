import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

struct CountrySelectionView: View {
    @Bindable var store: StoreOf<CountrySelection>

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
            ToolbarItem(placement: .secondaryAction) {
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

private struct SelectionListSection: View {
    let title: String
    let countries: [Country]
    let selectedCountry: Country?
    let onSelect: (Country) -> Void

    init(title: String, items countries: [Country], selectedItem selectedCountry: Country?, onSelect: @escaping (Country) -> Void) {
        self.title = title
        self.countries = countries
        self.selectedCountry = selectedCountry
        self.onSelect = onSelect
    }

    var body: some View {
        Section(title) {
            ForEach(countries) { country in
                let isSelected = selectedCountry?.id == country.id
                Button {
                    onSelect(country)
                } label: {
                    HStack {
                        Text(country.asEmoji)

                        Text(country.name)

                        Spacer()

                        if isSelected {
                            Image(systemName: "checkmark")
                                .foregroundStyle(.tint)
                                .accessibilityHidden(true)
                        }
                    }
                    .foregroundStyle(.primary)
                    .accessibilityAddTraits(isSelected ? [.isSelected] : [])
                    .accessibilityHint("Tap to select \(country.name)")
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
