import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonDesignSystem
import SwiftUI

struct SelectAppellationPartView<Part: AppellationPart, IError: ClientError>: View {
    @Bindable var store: StoreOf<SelectAppellationPart<Part, IError>>

    init(store: StoreOf<SelectAppellationPart<Part, IError>>) {
        self.store = store
    }

    var body: some View {
        List {
            if !store.hierarchy.isEmpty {
                HierarchyDisplaySection(items: store.hierarchy)
            }

            SelectionListSection(
                title: "Available \(store.partType)s",
                items: store.availableParts,
                selectedItem: store.selectedPart,
                onSelect: { store.send(.partSelected($0)) }
            )
            .emptyable(store.availableParts, isLoading: store.isLoading) {
                ContentUnavailableView {
                    Label("No \(store.partType.lowercased())s available", systemImage: "exclamationmark.triangle")
                } description: {
                    Text("There are no \(store.partType.lowercased())s available for the selected options.")
                } actions: {
                    Button("Go Back") { store.send(.goBackButtonTapped) }
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Add a \(store.partType.lowercased())", systemImage: "plus") {
                    store.send(.createPartButtonTapped)
                }
            }
        }
        .loadable(isLoading: store.isLoading)
        .alert($store.scope(state: \.alert, action: \.alert))
        .navigationTitle("Select \(store.partType)")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { store.send(.onAppear) }
    }
}

// MARK: - Reusable Components

private struct HierarchyDisplaySection: View {
    let items: [Hierarchy]

    var body: some View {
        ForEach(items) { item in
            Section {
                HStack {
                    Text("\(item.label):")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text(item.value)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

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

#if DEBUG
import Dependencies

private struct ExamplePart: AppellationPart {
    let id: UUID
    let name: String

    init(name: String) {
        @Dependency(\.uuid) var uuid
        id = uuid()
        self.name = name
    }
}

private enum ExampleError: ClientError {
    case failed

    var localizedDescription: String {
        "Something went wrong"
    }
}

#Preview {
    let fetchHandler: SelectAppellationPart<ExamplePart, ExampleError>.FetchPartsHandler = {
        .success([
            ExamplePart(name: "Bordeaux"),
            ExamplePart(name: "Burgundy"),
            ExamplePart(name: "Champagne")
        ])
    }

    let state = SelectAppellationPart<ExamplePart, ExampleError>.State(
        partType: "Region",
        hierarchy: [
            Hierarchy(label: "Country", value: "France"),
            Hierarchy(label: "Vineyard", value: "Loire Valley")
        ],
        fetchPartsHandler: fetchHandler
    )

    NavigationStack {
        SelectAppellationPartView<ExamplePart, ExampleError>(
            store: Store(initialState: state) {
                SelectAppellationPart<ExamplePart, ExampleError>()
            }
        )
    }
}
#endif
