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

    @ViewBuilder private var extractionResultView: some View {
        List {
            capturedImageView

            likelyCorrectInformation

            editableInformation
        }
        .toolbar { actionButtons }
    }

    private func pictureAccessibilityLabel(index: Int) -> String {
        "Picture \(index + 1) of the wine bottle"
    }

    @ViewBuilder private var capturedImageView: some View {
        Section {
            HStack {
                let picturesArray = Array(store.capturedImages)
                ForEach(picturesArray.indices, id: \.self) { index in
                    if let image = Image(data: picturesArray[index], label: pictureAccessibilityLabel(index: index)) {
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .accessibilityLabel(pictureAccessibilityLabel(index: index))
                            .overlay(alignment: .topTrailing) {
                                Button("", systemIm_age: "xmark.circle.fill") {
                                    store.send(.removePictureButtonTapped(picturesArray[index]))
                                }
                                .accessibilityLabel("Remove picture \(index + 1)")
                                .buttonStyle(.plain)
                                .padding(4)
                            }
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

    @ViewBuilder private var likelyCorrectInformation: some View {
        Section("Likely correct information") {
            extractedDataRow(
                label: "Vintage Year",
                value: store.millesime.map { String($0) },
                icon: "calendar"
            )

            extractedDataRow(
                label: "Alcohol (AbV)",
                value: store.abv.map { String(format: "%.1f%%", $0) },
                icon: "drop.fill"
            )

            extractedDataRow(
                label: "Color",
                value: store.extractedWineColor.map(\.rawValue.capitalized),
                icon: "eye.fill"
            )
        }
    }

    @ViewBuilder private var editableInformation: some View {
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

            CellarButton("Continue", systemImage: "arrow.right", isLoading: store.isLoading, isDisabled: store.isDisabled) {
                store.send(.confirmExtractionButtonTapped)
            }
            .controlSize(.large)
            .modulableButtonStyle(isPrimary: !shouldPutForwardTakingAnotherPicture)
            .modulableLabelStyle(isPrimary: !shouldPutForwardTakingAnotherPicture)
        }
    }

    @ViewBuilder
    private func extractedDataRow(label: String, value: String?, icon: String) -> some View {
        HStack {
            Image(systemName: icon)
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
