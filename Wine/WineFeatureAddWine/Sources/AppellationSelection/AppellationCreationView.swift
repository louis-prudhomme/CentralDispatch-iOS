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
        NavigationStack(path: $store.scope(state: \.destination, action: \.destination)) {
            countrySelectionScreen
        } destination: { store in
            switch store.case {
                case .vineyardSelection:
                    vineyardSelectionScreen
                case .regionSelection:
                    regionSelectionScreen
                case .appellationName:
                    appellationNameScreen
            }
        }
        .loadable(isLoading: store.isLoading)
        .alert($store.scope(state: \.alert, action: \.alert))
        .onAppear { store.send(.onAppear) }
    }

    // MARK: - Country Selection Screen

    @ViewBuilder private var countrySelectionScreen: some View {
        List {
            DescriptionSection(text: "Select the country for this appellation")

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
                } actions: {
                    Button("Go Back") { store.send(.goBackButtonTapped) }
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .navigationTitle("Select Country")
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: - Vineyard Selection Screen

    @ViewBuilder private var vineyardSelectionScreen: some View {
        List {
            HierarchyDisplaySection(
                items: [
                    ("Country", store.selectedCountry?.name)
                ]
            )

            DescriptionSection(text: "Select the vineyard for this appellation")

            SelectionListSection(
                title: "Available Vineyards",
                items: store.availableVineyards,
                selectedItem: store.selectedVineyard,
                onSelect: { store.send(.vineyardSelected($0)) }
            )
            .emptyable(store.availableVineyards, isLoading: store.isLoading) {
                ContentUnavailableView {
                    Label("No vineyards available", systemImage: "exclamationmark.triangle")
                } description: {
                    Text("There are no vineyards available for the selected country.")
                } actions: {
                    Button("Go Back") { store.send(.goBackButtonTapped) }
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .navigationTitle("Select Vineyard")
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: - Region Selection Screen

    @ViewBuilder private var regionSelectionScreen: some View {
        List {
            HierarchyDisplaySection(
                items: [
                    ("Country", store.selectedCountry?.name),
                    ("Vineyard", store.selectedVineyard?.name)
                ]
            )

            DescriptionSection(text: "Select the region for this appellation")

            SelectionListSection(
                title: "Available Regions",
                items: store.availableRegions,
                selectedItem: store.selectedRegion,
                onSelect: { store.send(.regionSelected($0)) }
            )
            .emptyable(store.availableRegions, isLoading: store.isLoading) {
                ContentUnavailableView {
                    Label("No regions available", systemImage: "exclamationmark.triangle")
                } description: {
                    Text("There are no regions available for the selected vineyard.")
                } actions: {
                    Button("Go Back") { store.send(.goBackButtonTapped) }
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .navigationTitle("Select Region")
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: - Appellation Name Screen

    @ViewBuilder private var appellationNameScreen: some View {
        List {
            HierarchyDisplaySection(
                items: [
                    ("Country", store.selectedCountry?.name),
                    ("Vineyard", store.selectedVineyard?.name),
                    ("Region", store.selectedRegion?.name)
                ]
            )

            DescriptionSection(text: "Enter the name for this appellation")

            Section("Appellation Name") {
                TextField("Enter appellation name", text: $store.newAppellationName)
            }
        }
        .overlay(alignment: .bottom) {
            CellarButton("Create \(store.newAppellationName)", systemImage: "plus", isLoading: store.isLoading) {
                store.send(.submitAppellationButtonTapped)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Appellation Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Reusable Components

private struct DescriptionSection: View {
    let text: String

    var body: some View {
        Section {
            Text(text)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

private struct HierarchyDisplaySection: View {
    let items: [(String, String?)]

    var body: some View {
        ForEach(items.filter { $0.1 != nil }, id: \.0) { label, value in
            if let value {
                Section {
                    HStack {
                        Text("\(label):")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text(value)
                            .fontWeight(.medium)
                    }
                }
            }
        }
    }
}

private struct SelectionContentUnavailableView: View {
    let title: String
    let message: String
    let actionTitle: String
    let action: () -> Void

    var body: some View {
        ContentUnavailableView {
            Label(title, systemImage: "exclamationmark.triangle")
        } description: {
            Text(message)
        } actions: {
            Button(actionTitle) {
                action()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

private struct SelectionListSection<Item: Identifiable & Equatable>: View where Item.ID == UUID {
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
                        Text(itemName(for: item))
                            .foregroundStyle(.primary)
                        Spacer()
                        if isSelected {
                            Image(systemName: "checkmark")
                                .foregroundStyle(.tint)
                                .accessibilityHidden(true)
                        }
                    }
                    .accessibilityAddTraits(isSelected ? [.isSelected] : [])
                    .accessibilityHint("Tap to select \(itemName(for: item))")
                }
            }
        }
    }

    private func itemName(for item: Item) -> String {
        if let country = item as? Country {
            return country.name
        } else if let vineyard = item as? Vineyard {
            return vineyard.name
        } else if let region = item as? Region {
            return region.name
        }
        return ""
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
