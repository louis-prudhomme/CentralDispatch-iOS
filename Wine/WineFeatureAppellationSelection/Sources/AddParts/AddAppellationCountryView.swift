import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineCommonLocationClient

struct AddAppellationCountryView: View {
    @Bindable var store: StoreOf<AddAppellationCountry>

    init(store: StoreOf<AddAppellationCountry>) {
        self.store = store
    }

    var body: some View {
        List {
            ForEach(store.filteredCountries) { country in
                let isSelected = country.code == store.existing?.code
                Button {
                    store.send(.countrySelected(country))
                } label: {
                    CountryView(country: country, isSelected: isSelected)
                }
                .buttonStyle(.plain)
            }
        }
        .emptyable(store.filteredCountries, searchText: store.searchText, isLoading: store.isLoading) { emptyCta }
        .searchable(text: $store.searchText)
        .loadable(isLoading: store.isLoading)
        .alert($store.scope(state: \.alert, action: \.alert))
        .navigationTitle("Select Country")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { store.send(.onAppear) }
    }

    private var emptyCta: some View {
        ContentUnavailableView {
            Label("No countries available", systemImage: "exclamationmark.triangle")
        } description: {
            Text("The search \"\(store.searchText)\" did not match any country.")
        } actions: {
            Button("Start Over") { store.send(.startOverButtonTapped) }
                .buttonStyle(.borderedProminent)
        }
    }
}

private struct CountryView: View {
    let country: LocationCountry
    let isSelected: Bool

    var body: some View {
        HStack(spacing: 12) {
            Text(country.asEmoji)
                .font(.title2)

            VStack(alignment: .leading, spacing: 4) {
                Text(country.name)
                    .font(.headline)

                Text(country.code)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            if isSelected {
                Image(systemName: "checkmark")
                    .accessibilityHidden(true)
                    .foregroundStyle(.primary)
            }
        }
        .accessibilityAddTraits(isSelected ? [.isSelected] : [])
        .contentShape(Rectangle())
    }
}

// MARK: - Previews

#if DEBUG
import Dependencies
import WineDomain

#Preview {
    NavigationStack {
        AddAppellationCountryView(
            store: Store(initialState: AddAppellationCountry.State(existing: nil)) {
                AddAppellationCountry()
            } withDependencies: {
                $0.locationClient = .mockWithData
            }
        )
    }
}
#endif
