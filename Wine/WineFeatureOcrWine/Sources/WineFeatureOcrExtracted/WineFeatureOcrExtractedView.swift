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
            if store.capturedImages.isEmpty {
                ContentUnavailableView("No pictures captured yet.", systemImage: "camera", description: Text("Trying taking some!"))
            } else {
                HStack {
                    let picturesArray = Array(store.capturedImages)
                    ForEach(picturesArray.indices, id: \.self) { index in
                        Picture(
                            data: picturesArray[index],
                            index: index
                        ) { store.send(.removePictureButtonTapped(picturesArray[index])) }
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
                VStack {
                    HStack(alignment: .center, spacing: 8) {
                        Text("Extracted text")

                        TextField("Extracted text", text: $store.extractedData[index])
                            .textFieldStyle(.roundedBorder)
                            .font(.caption)
                    }

                    HStack(alignment: .center, spacing: 8) {
                        Text(emoji(for: store.extractedStringTypes[index]))
                            .font(.title3)
                            .frame(width: 32, alignment: .center)

                        Picker("Type", selection: $store.extractedStringTypes[index]) {
                            ForEach(ExtractedStringType.allCases) { type in
                                Text(type.rawValue).tag(type)
                            }
                        }
                        .pickerStyle(.menu)
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

private struct Picture: View {
    let data: Data
    let index: Int
    let removeAction: () -> Void

    var body: some View {
        if let image = Image(data: data, label: pictureAccessibilityLabel(index: index)) {
            image
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 175)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .accessibilityLabel(pictureAccessibilityLabel(index: index))
                .overlay(alignment: .topTrailing) {
                    Button("Remove picture \(index + 1)", systemImage: "xmark.circle.fill", role: .destructive) {
                        removeAction()
                    }
                    .labelStyle(.iconOnly)
                    .buttonStyle(.borderless)
                    .padding(4)
                }
        } else {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 100, height: 175)
                .foregroundStyle(Material.regular)
                .overlay {
                    Label("Couldn't load picture.", systemImage: "photo.trianglebadge.exclamationmark.fill")
                        .labelStyle(.iconOnly)
                }
        }
    }

    private func pictureAccessibilityLabel(index: Int) -> String {
        "Picture \(index + 1) of the wine bottle"
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
                        "Bordeaux, France"
                    ]
                )
            )) {
                WineFeatureOcrExtracted()
            }
        )
    }
}

#Preview {
    HStack {
        Picture(data: Data(), index: 2, removeAction: {})
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.pink)
}
