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
            capturedImageView

            likelyCorrectInformation

            editableInformation

            taggedDataPresentation
        }
        .toolbar { actionButtons }
    }

    private var capturedImageView: some View {
        Section {
            PictureSelectionView(
                pictures: Array(store.capturedImages),
                showRemoveButton: true,
                onCameraSelect: { store.send(.selectPictureFromCameraButtonTapped) },
                onLibrarySelect: { store.send(.selectPictureFromLibraryButtonTapped) },
                onRemovePicture: { store.send(.removePictureButtonTapped($0)) }
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
                EditableDataRow(store: $store, index: index)
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Split", systemImage: "rectangle.split.2x1") {
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

    @ToolbarContentBuilder private var actionButtons: some ToolbarContent {
        ToolbarItemGroup(placement: .bottomBar) {
            Button(addAnotherPictureLabel, systemImage: "photo.badge.plus") {
                store.send(.selectPictureFromCameraButtonTapped)
            }
            .controlSize(.large)
            .modulableButtonStyle(isPrimary: shouldPutForwardTakingAnotherPicture)
            .modulableLabelStyle(isPrimary: shouldPutForwardTakingAnotherPicture)
            .id("addAnotherPictureButton")

            CellarButton("Continue", systemImage: "arrow.right", isLoading: store.isLoading, isDisabled: store.isDisabled) {
                store.send(.confirmExtractionButtonTapped)
            }
            .controlSize(.large)
            .modulableButtonStyle(isPrimary: !shouldPutForwardTakingAnotherPicture)
            .modulableLabelStyle(isPrimary: !shouldPutForwardTakingAnotherPicture)
            .id("continueButton \(store.isDisabled) \(store.isLoading)")
        }
    }
}

// MARK: - Components

private struct EditableDataRow: View {
    @Bindable var store: StoreOf<WineFeatureOcrExtracted>
    let index: Int

    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Text(emoji(for: store.extractedData[index].type))
                .font(.title3)
                .frame(width: 32, alignment: .center)

            TextField("Extracted text", text: $store.extractedData[index].string)
                .lineLimit(2)
                .textFieldStyle(.roundedBorder)
                .font(.caption)

            Picker("Type", selection: $store.extractedData[index].type) {
                ForEach(ExtractedStringType.allCases) { type in
                    Text(type.rawValue).tag(type)
                }
            }
            .labelsHidden()
            .pickerStyle(.menu)
        }
    }
}

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
    func modulableButtonStyle(isPrimary: Bool) -> some View {
        `if`(isPrimary) {
            $0.buttonStyle(.borderedProminent)
        } `else`: {
            $0.buttonStyle(.bordered)
        }
    }
}

private extension View {
    func modulableLabelStyle(isPrimary: Bool) -> some View {
        `if`(isPrimary) {
            $0.labelStyle(.titleAndIcon)
        } `else`: {
            $0.labelStyle(.iconOnly)
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
