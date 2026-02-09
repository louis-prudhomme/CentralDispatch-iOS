import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI

public struct WineFeatureOcrExtractedView: View {
    @Bindable var store: StoreOf<WineFeatureOcrExtracted>

    public init(store: StoreOf<WineFeatureOcrExtracted>) {
        self.store = store
    }

    public var body: some View {
        extractionResultView
            .navigationTitle("Extracted Data")
            .navigationBarTitleDisplayMode(.inline)
            .alert($store.scope(state: \.alert, action: \.alert))
    }

    private var extractionResultView: some View {
        List {
            if !store.isEditing {
                capturedImageView

                likelyCorrectInformation
            }

            if store.isEditing {
                editionTip
            }

            editableInformation

            if !store.isEditing {
                taggedDataPresentation
            }
        }
        .toolbar { toolbar }
        .navigationBarBackButtonHidden(store.isEditing)
    }

    private var editionTip: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: "lightbulb")
                .foregroundStyle(.yellow, .primary)
            Text("You can also swipe items on the left or on the right on the previous secreen.")
        }
    }

    private var capturedImageView: some View {
        Section {
            PictureSelectionView(
                pictures: Array(store.capturedImages),
                showRemoveButton: true,
                onCameraSelect: { store.send(.selectPictureFromCameraButtonTapped) },
                onLibrarySelect: { store.send(.selectPictureFromLibraryButtonTapped) },
                onRemovePicture: { store.send(.removePictureButtonTapped($0), animation: .default) }
            )
        }
    }

    private var likelyCorrectInformation: some View {
        Section("Likely correct information") {
            ExtractedDataRow(
                label: "Vintage Year",
                value: store.millesime.map { String($0) },
                systemName: "calendar"
            )

            ExtractedDataRow(
                label: "Alcohol (AbV)",
                value: store.abv.map { String(format: "%.1f%%", $0) },
                systemName: "drop.fill"
            )

            ExtractedDataRow(
                label: "Color",
                value: store.extractedWineColor.map(\.rawValue.capitalized),
                systemName: "eye.fill"
            )
        }
    }

    private var editableInformation: some View {
        Section("Editable information") {
            ForEach(Array(store.extractedData.enumerated()), id: \.offset) { index, _ in
                HStack(alignment: .center, spacing: 8) {
                    if !store.isEditing {
                        Text(emoji(for: store.extractedData[index].type))
                            .font(.title3)
                            .frame(width: 32, alignment: .center)
                    }
                    if store.isEditing {
                        let isSelected = store.selectedIndexes.contains(index)
                        Toggle(isOn: Binding(
                            get: { isSelected },
                            set: { store.send(.rowSelectionToggled(index, $0)) }
                        )) {
                            let systemImage = isSelected ? "checkmark.circle.fill" : "circle"
                            Label("Select \(store.extractedData[index].string)", systemImage: systemImage)
                        }
                        .labelStyle(.iconOnly)
                        .toggleStyle(.button)
                        .buttonStyle(.plain)
                    }

                    TextField("Extracted text", text: $store.extractedData[index].string)
                        .lineLimit(2)
                        .textFieldStyle(.roundedBorder)
                        .font(.caption)

                    if !store.isEditing {
                        Picker("Type", selection: $store.extractedData[index].type) {
                            ForEach(ExtractedStringType.allCases) { type in
                                Text(type.rawValue).tag(type)
                            }
                        }
                        .labelsHidden()
                        .pickerStyle(.menu)
                    }
                }
                .extractedDataSwipeActions(using: store, for: index)
            }
        }
    }

    private var taggedDataPresentation: some View {
        Section("Tagged Data") {
            ForEach(ExtractedStringType.allCases.filter { $0 != .notKept }, id: \.self) { type in
                let taggedStrings = store.state.getStrings(for: type)
                let isEmpty = taggedStrings.isEmpty

                ExtractedDataRow(
                    label: type.rawValue,
                    value: isEmpty ? "Nothing yet" : taggedStrings.joined(separator: "\n"),
                    icon: emoji(for: type)
                )
            }
        }
    }

    var addAnotherPictureLabel: String {
        switch store.capturedImages.count {
            case 0: "Add a picture"
            case 1: "Add a second picture"
            default: "Add another picture"
        }
    }

    var shouldPutForwardTakingAnotherPicture: Bool {
        store.capturedImages.count < 2
    }

    @ToolbarContentBuilder private var toolbar: some ToolbarContent {
        if store.isEditing {
            editingToolbar
        } else {
            viewToolbar
        }
    }

    @ToolbarContentBuilder private var editingToolbar: some ToolbarContent {
        ToolbarItem(placement: .confirmationAction) {
            Button("Done") {
                store.send(.doneEditingButtonTapped, animation: .default)
            }
        }

        ToolbarItem(placement: .cancellationAction) {
            Button("Cancel", role: .destructive) {
                store.send(.cancelEditingButtonTapped, animation: .default)
            }
        }

        ToolbarItemGroup(placement: .bottomBar) {
            if !store.selectedIndexes.isEmpty {
                if let selected = store.selectedIndexes.first {
                    if store.selectedIndexes.count == 1 {
                        Button("Merge", systemImage: "arrow.trianglehead.merge") {
                            store.send(.mergeExtractedStringWithPrevious(at: selected), animation: .default)
                        }
                    } else {
                        Button("Merge", systemImage: "arrow.down.and.line.horizontal.and.arrow.up") {
                            store.send(.mergeSelectedButtonTapped, animation: .default)
                        }
                    }

                    Button("Split", systemImage: "arrow.up.and.line.horizontal.and.arrow.down") {
                        store.send(.splitExtractedString(at: selected), animation: .default)
                    }
                    .disabled(store.selectedIndexes.count != 1)
                }

                Button("Delete (\(store.selectedIndexes.count))", systemImage: "trash", role: .destructive) {
                    store.send(.deleteSelectedButtonTapped, animation: .default)
                }
            }
        }
    }

    @ToolbarContentBuilder private var viewToolbar: some ToolbarContent {
        ToolbarItemGroup(placement: .confirmationAction) {
            CellarButton("Continue", isLoading: store.isLoading, isDisabled: store.isDisabled) {
                store.send(.confirmExtractionButtonTapped)
            }
        }

        if store.capturedImages.count < 2 {
            ToolbarItemGroup(placement: .bottomBar) {
                Button("Add a second picture from your camera", systemImage: "camera") {
                    store.send(.selectPictureFromCameraButtonTapped)
                }
                .labelStyle(.titleAndIcon)

                Button("Add a second picture from your library", systemImage: "photo.badge") {
                    store.send(.selectPictureFromLibraryButtonTapped)
                }
                .labelStyle(.titleAndIcon)
            }
        }

        if #available(iOS 26.0, *) {
            ToolbarSpacer(placement: .bottomBar)
        }

        ToolbarItem(placement: .bottomBar) {
            Button("Edit", systemImage: "pencil") {
                store.send(.editButtonTapped, animation: .default)
            }
        }
    }
}

// MARK: - Components

private struct ExtractedDataRow<Label: View>: View {
    let label: String
    let value: String?
    let icon: () -> Label

    var body: some View {
        HStack {
            icon()
                .foregroundStyle(.secondary)
                .frame(width: 24)
                .accessibilityHidden(true)

            Text(label)
                .foregroundStyle(.secondary)

            Spacer()

            if let value {
                Text(value)
                    .fontWeight(.medium)
            } else {
                Text("Not found")
                    .foregroundStyle(.tertiary)
                    .italic()
            }
        }
    }
}

private extension ExtractedDataRow where Label == Text {
    init(label: String, value: String?, icon: String) {
        self.label = label
        self.value = value
        self.icon = { Text(icon) }
    }
}

private extension ExtractedDataRow where Label == Image {
    init(label: String, value: String?, systemName: String) {
        self.label = label
        self.value = value
        icon = {
            Image(systemName: systemName)
        }
    }
}

// MARK: - Helpers

private extension View {
    func extractedDataSwipeActions(using store: StoreOf<WineFeatureOcrExtracted>, for index: Int) -> some View {
        swipeActions(edge: .leading, allowsFullSwipe: false) {
            Button("Split", systemImage: "arrow.up.and.line.horizontal.and.arrow.down") {
                store.send(.splitExtractedString(at: index))
            }
            if index != 0 {
                Button("Merge with top", systemImage: "arrow.trianglehead.merge") {
                    store.send(.mergeExtractedStringWithPrevious(at: index))
                }
            }
        }
        .swipeActions(edge: .trailing) {
            Button("Remove", systemImage: "trash", role: .destructive) {
                store.send(.deleteExtractedString(at: index))
            }
        }
    }
}

private func emoji(for type: ExtractedStringType) -> String {
    switch type {
        case .grapeVariety: return "🍇"
        case .appellation: return "🌱"
        case .winemaker: return "👨‍🌾"
        case .bottlingLocation: return "📍"
        case .name: return "🏷️"
        case .notKept: return "✖️"
    }
}

// MARK: - Previews

#Preview {
    NavigationStack {
        WineFeatureOcrExtractedView(
            store: Store(initialState: WineFeatureOcrExtracted.State(
                capturedImage: Data(),
                extractedData: WineExtractedData(
                    millesime: 2_015,
                    abv: 13.5,
                    extractedStrings: [
                        "Château Margaux",
                        "2015",
                        "13.5% ABV",
                        "Bordeaux, France super long text which doubtless will be truncated"
                    ]
                )
            )) {
                WineFeatureOcrExtracted()
            }
        )
    }
}
