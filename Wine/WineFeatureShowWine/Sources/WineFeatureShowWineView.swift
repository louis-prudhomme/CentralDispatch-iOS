import SharedCommonArchitecture
import SharedCommonDesignSystem
import SwiftUI
import WineDomain

public struct WineFeatureShowWineView: View {
    let store: StoreOf<WineFeatureShowWine>

    var bottle: WineBottle {
        store.bottle
    }

    public init(store: StoreOf<WineFeatureShowWine>) {
        self.store = store
    }

    public var body: some View {
        Form {
            Section {
                HStack {
                    ForEach(bottle.pictures.indices, id: \.self) { index in
                        if let image = Image(data: bottle.pictures[index], label: "Photo \(index + 1) of \(bottle.name)") {
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .accessibilityLabel("Photo \(index + 1) of \(bottle.name)")
                        } else {
                            ContentUnavailableView(
                                "No photo",
                                systemImage: "photo",
                                description: Text("This wine has no photo")
                            )
                            .frame(height: 80)
                        }
                    }
                }
            }

            Section(header: Text("Data")) {
                if let millesime = bottle.millesime {
                    Row(header: "Millesime", text: "\(millesime)")
                }

                if let winemaker = bottle.winemaker {
                    Row(header: "Winemaker", text: winemaker.name)
                }

                Row(header: "AbV") {
                    Text("\(bottle.abv, specifier: "%.1f")%")
                }

                Row(header: "Wine Color") {
                    HStack(spacing: 4) {
                        Text(bottle.wineColor.rawValue.capitalized)
                        Text(bottle.wineColor.emoji)
                    }
                }

                Row(header: "Sparkling Level", text: bottle.sparklingLevel.displayName)
            }

            Section(header: Text("Appellation")) {
                Row(header: "Appellation", text: bottle.appellation.name)
                Row(header: "Region", text: bottle.appellation.region.name)
                Row(header: "Vineyard", text: bottle.appellation.region.vineyard.name)
                Row(header: "Country", text: bottle.appellation.region.vineyard.country.name)
            }

            Section(header: Text("Grape Varieties")) {
                ForEach(bottle.grapeVarieties, id: \.id) { variety in
                    Text(variety.name)
                }
            }

            Section(header: Text("Bottling Location")) {
                Row(header: "Location", text: bottle.bottlingLocation.name)

                Row(header: "Country", text: bottle.bottlingLocation.country)

                Row(header: "Region", text: bottle.bottlingLocation.region)

                if !bottle.bottlingLocation.others.isEmpty {
                    Row(header: "Locality", text: bottle.bottlingLocation.others
                        .joined(separator: "\n"))
                        .multilineTextAlignment(.trailing)
                }

                Button("Show on Map", systemImage: "mappin.and.ellipse") {
                    store.send(.showMapButtonTapped)
                }
            }
        }
        .navigationTitle(bottle.name)
    }
}

// TODO: refactor into WineDomain
private extension WineBottlingLocation {
    var country: String {
        administrativeDivisions
            .first { $0.type == .country }?
            .name ?? "Unknown"
    }

    var region: String {
        administrativeDivisions
            .first { $0.type == .region }?
            .name ?? "Unknown"
    }

    var others: [String] {
        administrativeDivisions
            .filter { $0.type != .country && $0.type != .region }
            .sorted { $0.type.importance < $1.type.importance }
            .map(\.name)
    }
}

private extension WineFeatureShowWineView {
    struct Row<Label: View>: View {
        let header: String
        let label: () -> Label

        init(header: String, label: @escaping () -> Label) {
            self.header = header
            self.label = label
        }

        var body: some View {
            HStack {
                Text(header)

                Spacer()

                label()
            }
        }
    }
}

private extension WineFeatureShowWineView.Row where Label == Text {
    init(header: String, text: String) {
        self.init(header: header) {
            Text(text)
        }
    }
}

#Preview {
    // swiftlint:disable use_dependency_for_date use_dependency_for_uuid
    let grape = GrapeVariety(name: "Cabernet Sauvignon", description: "zpdoqzpdok", color: .black, synonyms: [])
    let country = Country(name: "France", code: "FR")
    let vineyard = Vineyard(name: "Bordelais", description: "qdkqpdoqkdop", soilAndClimate: "qzkdqpzodkqpd", history: "o,qdqzpdoq",
                           country: country)
    let region = Region(name: "Medoc", vineyard: vineyard)
    let winemaker = Winemaker(id: UUID(), name: "Château Margaux", createdAt: Date())
    let location = WineBottlingLocation(id: UUID(),
                                        name: "Moulis-en-Médoc",
                                        coordinates: .init(latitude: 44.8378, longitude: -0.5792),
                                        administrativeDivisions: [
                                            .init(type: .country, name: "France", code: "FR"),
                                            .init(type: .region, name: "Bordeaux", code: "BOD")
                                        ],
                                        providerId: 1,
                                        createdAt: Date())
    let bottle = WineBottle(
        id: UUID(),
        name: "Château Margaux",
        millesime: 2_015,
        abv: 13.5,
        pictures: [Data()],
        bottlingLocation: location,
        grapeVarieties: [grape],
        winemaker: winemaker,
        appellation: Appellation(
            name: "Médoc",
            description: "zdzdqdqd",
            colors: [.red],
            mainGrapeVarieties: [grape],
            rawWindow: "10 ans",
            region: region
        ),
        wineColor: .red,
        sparklingLevel: .tranquille,
        createdAt: Date()
    )
    // swiftlint:enable use_dependency_for_date use_dependency_for_uuid

    NavigationStack {
        WineFeatureShowWineView(
            store: Store(initialState: WineFeatureShowWine.State(bottle: bottle)) {
                WineFeatureShowWine()
            }
        )
    }
}
