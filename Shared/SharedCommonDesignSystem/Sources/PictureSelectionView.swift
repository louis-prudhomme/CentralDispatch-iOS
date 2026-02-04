import SwiftUI

public struct PictureSelectionView: View {
    let pictures: [Data]
    let wineName: String?
    let showRemoveButton: Bool
    let onCameraSelect: () -> Void
    let onLibrarySelect: () -> Void
    let onRemovePicture: ((Data) -> Void)?

    public init(
        pictures: [Data],
        wineName: String? = nil,
        showRemoveButton: Bool = false,
        onCameraSelect: @escaping () -> Void,
        onLibrarySelect: @escaping () -> Void,
        onRemovePicture: ((Data) -> Void)? = nil
    ) {
        self.pictures = pictures
        self.wineName = wineName
        self.showRemoveButton = showRemoveButton
        self.onCameraSelect = onCameraSelect
        self.onLibrarySelect = onLibrarySelect
        self.onRemovePicture = onRemovePicture
    }

    public var body: some View {
        VStack(spacing: 12) {
            if pictures.isEmpty {
                ContentUnavailableView(
                    "No pictures captured yet.",
                    systemImage: "camera",
                    description: Text("Try taking some!")
                )
            } else {
                picturesDisplay
            }

            actionButtons
        }
        .padding(.vertical, 8)
    }

    private var picturesDisplay: some View {
        HStack {
            ForEach(pictures.indices, id: \.self) { index in
                if let image = Image(data: pictures[index], label: pictureAccessibilityLabel(index: index)) {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 175)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .accessibilityLabel(pictureAccessibilityLabel(index: index))
                        .overlay(alignment: .topTrailing) {
                            if showRemoveButton {
                                removeButton(for: index)
                            }
                        }
                }
            }
        }
    }

    private func removeButton(for index: Int) -> some View {
        Button(
            "Remove picture \(index + 1)",
            systemImage: "xmark.circle.fill",
            role: .destructive
        ) {
            onRemovePicture?(pictures[index])
        }
        .labelStyle(.iconOnly)
        .buttonStyle(.borderless)
        .padding(4)
    }

    private var actionButtons: some View {
        HStack(spacing: 12) {
            Button {
                onCameraSelect()
            } label: {
                Label("Camera", systemImage: "camera")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            Button {
                onLibrarySelect()
            } label: {
                Label("Library", systemImage: "photo.on.rectangle")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
        }
    }

    private func pictureAccessibilityLabel(index: Int) -> String {
        if let wineName, !wineName.isEmpty {
            return "Picture \(index + 1) of \(wineName)"
        } else {
            return "Picture \(index + 1) of the wine bottle"
        }
    }
}

#Preview("two pictures") {
    VStack {
        PictureSelectionView(
            pictures: [Data(), Data()],
            wineName: "Château Margaux",
            showRemoveButton: true,
            onCameraSelect: {},
            onLibrarySelect: {},
            onRemovePicture: { _ in }
        )
    }
    .padding()
}

#Preview("empty") {
    VStack {
        PictureSelectionView(
            pictures: [],
            onCameraSelect: {},
            onLibrarySelect: {}
        )
    }
    .padding()
}
