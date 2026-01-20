import SharedCommonArchitecture
import SharedCommonPictureClient
import SharedCommonUtilities
import UIKit
import Vision
import WineInteractor

// TODO: try & parse appellations, winemakers & grape varieties from extracted strings
// TODO: multiple pictures
// TODO: mechanism to split strings with spaces into several (ex : "Syrah Grenache" => "Syrah", "Grenache")
// TODO: better UX for extracted stuff
// TODO: avoid duplicated extracted string tags

@Reducer
public struct WineFeatureOcrExtracted {
    @ObservableState
    public struct State: Equatable {
        var capturedImage: Data
        var initialExtractedData: WineExtractedData
        var abv: Double?
        var millesime: Int?

        var extractedData: [String]
        var extractedStringTypes: [ExtractedStringType]

        var isLoading = false

        @Presents var alert: AlertState<Never>?

        public init(capturedImage: Data, extractedData: WineExtractedData) {
            self.capturedImage = capturedImage
            self.extractedData = extractedData.extractedStrings
            millesime = extractedData.millesime
            abv = extractedData.abv
            initialExtractedData = extractedData
            extractedStringTypes = Array(repeating: .notKept, count: extractedData.extractedStrings.count)
        }
    }

    public enum Action: BindableAction {
        case confirmExtractionButtonTapped
        case extractedDataPrefetchFinished(Result<PrefetchedData, WineInteractorError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        /// Handled by the Coordinator
        public enum Delegate: Equatable {
            case extractedDataConfirmed(WineConfirmedExtractedData)
            case retakeButtonTapped
        }
    }

    @Dependency(\.appellationInteractor.search) var searchAppellation
    @Dependency(\.grapeVarietyInteractor.search) var searchGrapeVariety
    @Dependency(\.winemakerInteractor.search) var searchWinemaker

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .confirmExtractionButtonTapped:
                    state.isLoading = true

                    return .run { [
                        extractedAppellation = state.extractedAppellation,
                        extractedGrapeVarieties = state.extractedGrapeVarieties,
                        extractedWinemaker = state.extractedWinemaker,
                        searchAppellation,
                        searchWinemaker,
                        searchGrapeVariety
                    ] send in
                        var searchResults = [Result<Any, WineInteractorError>]()
                        var foundAppellation: Appellation?
                        var foundWinemaker: Winemaker?
                        var foundGrapeVarieties = [GrapeVariety]()

                        if let extractedAppellation {
                            let result = await searchAppellation(extractedAppellation)
                            searchResults.append(result.map { $0 as Any })
                            if case let .success(appellations) = result {
                                foundAppellation = appellations.first
                            }
                        }

                        if let extractedWinemaker {
                            let result = await searchWinemaker(extractedWinemaker)
                            searchResults.append(result.map { $0 as Any })
                            if case let .success(winemakers) = result {
                                foundWinemaker = winemakers.first
                            }
                        }

                        for extractedVariety in extractedGrapeVarieties {
                            let result = await searchGrapeVariety(extractedVariety)
                            searchResults.append(result.map { $0 as Any })
                            if case let .success(varieties) = result, let first = varieties.first {
                                foundGrapeVarieties.append(first)
                            }
                        }

                        let allFailed = !searchResults.isEmpty && searchResults.allSatisfy(\.isFailure)

                        if allFailed {
                            await send(.extractedDataPrefetchFinished(.failure(.unknown)))
                        } else {
                            let prefetchedData = PrefetchedData(
                                grapeVarieties: foundGrapeVarieties,
                                appellation: foundAppellation,
                                winemaker: foundWinemaker
                            )
                            await send(.extractedDataPrefetchFinished(.success(prefetchedData)))
                        }
                    }

                case let .extractedDataPrefetchFinished(.success(result)):
                    state.isLoading = false
                    let extractedData = WineConfirmedExtractedData(from: state, and: result)
                    return .send(.delegate(.extractedDataConfirmed(extractedData)))

                case let .extractedDataPrefetchFinished(.failure(error)):
                let errorMessage = "Une erreur s'est produite, veuillez réessayer."
                    state.alert = AlertState {
                        TextState([errorMessage, error.localizedDescription].joined(separator: "\n"))
                    }
                    state.isLoading = false
                    return .none

                case .alert:
                    return .none

                case .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }
}

// MARK: - Companion types

public enum ExtractedStringType: String, CaseIterable, Equatable, Codable, Identifiable {
    case grapeVariety = "Grape Variety"
    case appellation = "Appellation"
    case winemaker = "Winemaker"
    case name = "Name"
    case notKept = "Not Kept"

    public var id: String { rawValue }
}

public struct PrefetchedData {
    let grapeVarieties: [GrapeVariety]
    let appellation: Appellation?
    let winemaker: Winemaker?
}

// MARK: - Helpers

private extension WineFeatureOcrExtracted.State {
    func getStrings(for type: ExtractedStringType) -> [String] {
        extractedStringTypes
            .enumerated()
            .compactMap { index, type in
                type == .grapeVariety ? extractedData[index] : nil
            }
    }

    var extractedGrapeVarieties: [String] {
        getStrings(for: .grapeVariety)
    }

    var extractedWinemaker: String? {
        getStrings(for: .winemaker).first
    }

    var extractedAppellation: String? {
        getStrings(for: .appellation).first
    }
}

private extension WineConfirmedExtractedData {
    init(from state: WineFeatureOcrExtracted.State, and prefetchedData: PrefetchedData) {
        let name = state.extractedStringTypes
            .firstIndex { $0 == .name }
            .map { state.extractedData[$0] }

        self.init(
            millesime: state.initialExtractedData.millesime,
            abv: state.initialExtractedData.abv,
            appellation: prefetchedData.appellation,
            grapeVarieties: prefetchedData.grapeVarieties,
            winemaker: prefetchedData.winemaker,
            name: name,
            picture: state.capturedImage
        )
    }
}
