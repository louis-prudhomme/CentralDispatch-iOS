import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain
import WineFeatureAppellationSelection

public struct WineFeatureAddWineView: View {
    @Bindable var store: StoreOf<WineFeatureAddWine>

    @Dependency(\.date) private var date
    @Dependency(\.calendar) var calendar

    public init(store: StoreOf<WineFeatureAddWine>) {
        self.store = store
    }

    public var body: some View {
        Form {
            Section("Picture") {
                pictureSelection
            }

            Section("Details") {
                HStack(spacing: 16) {
                    Text("Name")

                    TextField("Enter Wine Name", text: $store.partialWine.name)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                }
                yearPicker

                HStack(spacing: 16) {
                    Text("AbV (%)")

                    TextField("Enter AbV", value: $store.partialWine.abv, format: .number)
                        .multilineTextAlignment(.trailing)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                }

                winemakerSelectionButton

                bottlingLocationSelectionButton
            }

            Section("Terroir") {
                appellationSelectionButton

                grapeVarietiesSelectionButton

                Picker("Wine Color", selection: $store.partialWine.wineColor) {
                    ForEach(WineColor.allCases, id: \.self) { color in
                        Text(color.rawValue.capitalized).tag(color)
                    }
                }

                Picker("Sparkling Level", selection: $store.partialWine.sparklingLevel) {
                    ForEach(SparklingLevel.allCases, id: \.self) { level in
                        Text(level.displayName).tag(level)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                CellarButton("Create \(store.partialWine.name)", systemImage: "plus", isLoading: store.isLoading) {
                    store.send(.submitButtonTapped)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
        .alert($store.scope(state: \.alert, action: \.alert))
        .sheet(item: $store.scope(state: \.destination, action: \.destination)) { store in
            switch store.case {
                case let .winemaker(store):
                    MultipleChoiceSelectionView(store: store)
                        .presentationDetents([.medium, .large])

                case let .grapeVarieties(store):
                    MultipleChoiceSelectionView(store: store)
                        .presentationDetents([.medium, .large])

                case let .appellation(store):
                    AppellationCoordinatorView(store: store)
                        .presentationDetents([.medium, .large])

                case let .bottlingLocation(store):
                    BottlingLocationSelectionView(store: store)
                        .presentationDetents([.medium, .large])
            }
        }
        .navigationTitle("Add a wine")
    }

    var yearPicker: some View {
        Picker("Vintage Year", selection: $store.partialWine.millesime) {
            let currentYear: Int = calendar.component(.year, from: date())
            ForEach(1_930 ... currentYear, id: \.self) { year in
                Text(year.formatted(.number.grouping(.never))).tag(year)
            }
        }
        .pickerStyle(.automatic)
    }

    var winemakerSelectionButton: some View {
        Button {
            store.send(.selectWinemakerButtonTapped)
        } label: {
            HStack {
                Text(store.partialWine.winemaker?.name ?? "Select Winemaker")

                Spacer()

                Image(systemName: store.partialWine.winemaker == nil ? "chevron.right" : "square.and.pencil")
                    .accessibilityHidden(true)
            }
            .accessibilityHint("Select or edit the winemaker")
        }
    }

    var grapeVarietiesSelectionButton: some View {
        Button {
            store.send(.selectGrapeVarietiesButtonTapped)
        } label: {
            HStack {
                Text(store.partialWine.grapeVarieties.isEmpty ? "Select Grape varieties" : store.partialWine.grapeVarieties.map(\.name).joined(separator: ", "))

                Spacer()

                Image(systemName: store.partialWine.grapeVarieties.isEmpty ? "chevron.right" : "square.and.pencil")
                    .accessibilityHidden(true)
            }
            .accessibilityHint("Select or edit grape varieties")
        }
    }

    var appellationSelectionButton: some View {
        Button {
            store.send(.selectAppellationButtonTapped)
        } label: {
            HStack {
                Text(store.partialWine.appellation?.name ?? "Select Appellation")

                Spacer()

                Image(systemName: store.partialWine.appellation == nil ? "chevron.right" : "square.and.pencil")
                    .accessibilityHidden(true)
            }
            .accessibilityHint("Select or edit the appellation")
        }
    }

    var bottlingLocationSelectionButton: some View {
        Button {
            store.send(.selectBottlingLocationButtonTapped)
        } label: {
            HStack {
                Text(store.partialWine.bottlingLocation?.name ?? "Select Bottling Location")

                Spacer()

                Image(systemName: store.partialWine.bottlingLocation == nil ? "chevron.right" : "square.and.pencil")
                    .accessibilityHidden(true)
            }
            .accessibilityHint("Select or edit the bottling location")
        }
    }

    var pictureSelection: some View {
        VStack(spacing: 12) {
            HStack {
                ForEach(store.partialWine.pictures.indices, id: \.self) { index in
                    if let image = Image(data: store.partialWine.pictures[index], label: pictureAccessibilityLabel(index: index)) {
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .accessibilityLabel(pictureAccessibilityLabel(index: index))
                    }
                }
            }

            HStack(spacing: 12) {
                Button { store.send(.selectPictureFromCameraButtonTapped) } label: {
                    Label("Camera", systemImage: "camera")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)

                Button { store.send(.selectPictureFromLibraryButtonTapped) } label: {
                    Label("Library", systemImage: "photo.on.rectangle")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
            }
        }
        .padding(.vertical, 8)
    }

    private func pictureAccessibilityLabel(index: Int) -> String {
        if !store.partialWine.name.isEmpty {
            "Picture \(index + 1) of \(store.partialWine.name)"
        } else {
            "Picture \(index + 1) of the wine bottle"
        }
    }
}

#Preview {
    NavigationStack {
        WineFeatureAddWineView(
            store: Store(initialState: WineFeatureAddWine.State()) {
                WineFeatureAddWine()
            }
        )
    }
}
