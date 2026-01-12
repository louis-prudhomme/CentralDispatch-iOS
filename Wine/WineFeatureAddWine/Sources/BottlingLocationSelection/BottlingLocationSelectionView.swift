import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonDesignSystem
import SwiftUI
import WineCommonLocationClient

struct BottlingLocationSelectionView: View {
    @Bindable var store: StoreOf<BottlingLocationSelection>

    init(store: StoreOf<BottlingLocationSelection>) {
        self.store = store
    }

    var body: some View {
        List(store.suggestedLocations, id: \.id) { location in
            Button {
                store.send(.locationSelected(location))
            } label: {
                LocationView(location: location)
            }
        }
        .emptyable(store.suggestedLocations, searchText: store.searchText, isLoading: store.isLoading)
        .loadable(isLoading: store.isLoading)
        .searchable(text: $store.searchText)
        .navigationTitle(navigationTitle)
        .navigationBarTitleDisplayMode(.inline)
        .alert($store.scope(state: \.alert, action: \.alert))
        .onAppear { store.send(.onAppear) }
    }

    private var navigationTitle: String {
        if let existing = store.existing {
            "Replace \(existing)"
        } else {
            "Select Bottling Location"
        }
    }
}

// MARK: - Display locations

private extension BottlingLocationSelectionView {
    struct LocationView: View {
        let location: Location

        var body: some View {
            VStack(alignment: .leading, spacing: 4) {
                Text(location.name)
                    .font(.headline)

                Text("\(Text(location.countryAsEmoji)) \(Text(location.regionName))")
                    .font(.subheadline)
                    .accessibilityLabel("\(location.regionName), \(location.countryName)")

                ForEach(location.administrativeDivisions, id: \.code) { division in
                    Text("\(division.name) (\(division.code))")
                        .foregroundStyle(.secondary)
                        .font(.caption)
                }
            }
            .accessibilityElement(children: .combine)
            .accessibilityHint("Select \(location.name) as bottling location")
        }
    }
}
