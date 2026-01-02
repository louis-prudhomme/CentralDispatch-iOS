import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI

public struct WineFeatureAddWineView: View {
    @Bindable var store: StoreOf<WineFeatureAddWine>

    public init(store: StoreOf<WineFeatureAddWine>) {
        self.store = store
    }

    public var body: some View {
        VStack(alignment: .center) {
            TextField("Enter Wine Name", text: $store.name)
                .textFieldStyle(.roundedBorder)
                .padding()

            TextField("Vintage Year", value: $store.millesime, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding()

            winemakerSelectionButton

            grapeVarietiesSelectionButton

            Spacer()

            CellarButton("Add Wine", systemImage: "plus", isLoading: store.isLoading) {
                store.send(.submitButtonTapped)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .alert($store.scope(state: \.alert, action: \.alert))
        .sheet(item: $store.scope(state: \.winemakerSheet, action: \.winemakerSheet)) { store in
            MultipleChoiceSelectionView(store: store)
                .presentationDetents([.medium, .large])
        }
        .sheet(item: $store.scope(state: \.grapeVarietySheet, action: \.grapeVarietySheet)) { store in
            MultipleChoiceSelectionView(store: store)
                .presentationDetents([.medium, .large])
        }
        .navigationTitle("Add a wine")
    }

    @ViewBuilder var winemakerSelectionButton: some View {
        Button {
            store.send(.selectWinemakerButtonTapped)
        } label: {
            HStack {
                Text(store.winemaker?.name ?? "Select Winemaker")

                Spacer()

                Image(systemName: store.winemaker == nil ? "chevron.right" : "square.and.pencil")
                    .accessibilityHidden(true)
            }
            .accessibilityHint("Select or edit the winemaker")
            .padding()
            .cornerRadius(8)
        }
        .buttonStyle(.bordered)
    }

    @ViewBuilder var grapeVarietiesSelectionButton: some View {
        Button {
            store.send(.selectGrapeVarietiesButtonTapped)
        } label: {
            HStack {
                Text(store.grapeVarieties.isEmpty ? "Select Grape varieties" : store.grapeVarieties.map(\.name).joined(separator: ", "))

                Spacer()

                Image(systemName: store.grapeVarieties.isEmpty ? "chevron.right" : "square.and.pencil")
                    .accessibilityHidden(true)
            }
            .accessibilityHint("Select or edit grape varieties")
            .padding()
            .cornerRadius(8)
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    WineFeatureAddWineView(
        store: Store(initialState: WineFeatureAddWine.State()) {
            WineFeatureAddWine()
        }
    )
}
