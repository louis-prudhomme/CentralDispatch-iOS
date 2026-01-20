import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI

public struct WineFeatureOcrExtractedView: View {
    @Bindable var store: StoreOf<WineFeatureOcrExtracted>

    public init(store: StoreOf<WineFeatureOcrExtracted>) {
        self.store = store
    }

    public var body: some View {
        NavigationStack {
            extractionResultView
                .navigationTitle("Extracted Data")
                .navigationBarTitleDisplayMode(.inline)
                .alert($store.scope(state: \.alert, action: \.alert))
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            store.send(.delegate(.retakeButtonTapped))
                        }
                    }
                }
        }
    }

    @ViewBuilder private var extractionResultView: some View {
        List {
            capturedImageView

            likelyCorrectInformation

            editableInformation

        }
        .toolbar { actionButtons }
    }

    @ViewBuilder private var capturedImageView: some View {
        Section {
            if let image = Image(data: store.capturedImage, label: "Captured wine bottle image") {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            } else {
                Image(systemName: "photo.badge.exclamationmark")
                    .font(.system(size: 80))
                    .foregroundStyle(.secondary)
                    .frame(height: 120)
                    .accessibilityHidden(true)
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
            case .appellation: return "📍"
            case .winemaker: return "👨‍🌾"
            case .name: return "🏷️"
            case .notKept: return "✖️"
        }
    }

    @ToolbarContentBuilder private var actionButtons: some ToolbarContent {
        ToolbarItemGroup(placement: .bottomBar) {
            CellarButton("Continue", systemImage: "arrow.right") {
                store.send(.confirmExtractionButtonTapped)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button { store.send(.delegate(.retakeButtonTapped)) } label: {
                Label("Retake Photo", systemImage: "arrow.counterclockwise")
            }
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
