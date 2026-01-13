import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

struct AppellationSelectionView: View {
    @Bindable var store: StoreOf<AppellationSelection>

    init(store: StoreOf<AppellationSelection>) {
        self.store = store
    }

    var body: some View {
        List {
            ForEach(store.suggestedAppellations) { appellation in
                let isSelected = appellation.id == store.existing?.id
                Button {
                    store.send(.appellationSelected(appellation))
                } label: {
                    AppellationView(appellation: appellation, isSelected: isSelected)
                }
            }
        }
        .listStyle(.plain)
        .searchable(text: $store.searchText)
        .loadable(isLoading: store.isLoading)
        .emptyable(store.suggestedAppellations, searchText: store.searchText, isLoading: store.isLoading) {
            emptyCta
        }
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
        .onAppear { store.send(.onAppear) }
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
    let isSelected: Bool

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(appellation.name)
                    .font(.headline)
                
                Text("\(appellation.region.vineyard.country.asEmoji) \(appellation.region.vineyard.name), \(appellation.region.name)")
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
        .accessibilityAddTraits(isSelected ? .isSelected : .isButton)
    }
}

#Preview {
    NavigationStack {
        AppellationSelectionView(
            store: Store(initialState: AppellationSelection.State(existing: nil)) {
                AppellationSelection()
            }
        )
    }
}
