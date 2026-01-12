import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

public struct AppellationSelectionView: View {
    @Bindable var store: StoreOf<AppellationSelection>
    @Environment(\.dismiss) var dismiss

    public init(store: StoreOf<AppellationSelection>) {
        self.store = store
    }

    public var body: some View {
        NavigationStack(path: $store.scope(state: \.destination, action: \.destination)) {
            List {
                ForEach(store.suggestedAppellations) { appellation in
                    Button {
                        store.send(.appellationSelected(appellation))
                    } label: {
                        AppellationView(appellation: appellation)
                    }
                }
            }
            .listStyle(.plain)
            .searchable(text: $store.searchText)
            .loadable(isLoading: store.isLoading)
            .emptyable(store.suggestedAppellations, searchText: store.searchText, isLoading: store.isLoading) { emptyCta }
            .alert($store.scope(state: \.alert, action: \.alert))
            .navigationTitle("Select an Appellation")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Create Appellation", systemImage: "plus") {
                        store.send(.createNewAppellationButtonTapped)
                    }
                }
            }
        } destination: { store in
            switch store.case {
                case let .creation(store):
                    AppellationCreationView(store: store)
            }
        }
    }

    private var emptyCta: some View {
        ContentUnavailableView {
            Label("No appellations found", systemImage: "magnifyingglass")
        } description: {
            Text("Try a different search or create a new appellation")
        } actions: {
            Button("Create New Appellation") {
                store.send(.createNewAppellationButtonTapped)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

private struct AppellationView: View {
    let appellation: Appellation

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(appellation.name)
                .font(.headline)

            Text("\(appellation.region.vineyard.country.asEmoji) \(appellation.region.vineyard.name), \(appellation.region.name)")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    AppellationSelectionView(
        store: Store(initialState: AppellationSelection.State(existing: nil)) {
            AppellationSelection()
        }
    )
}
