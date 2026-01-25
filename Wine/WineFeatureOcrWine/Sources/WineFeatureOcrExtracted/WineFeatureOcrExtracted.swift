import SharedCommonArchitecture
import SharedCommonPictureClient
import SharedCommonUtilities
import SharedCommonDependencies
import UIKit
import Vision
import WineCommonOcrClient
import WineCommonLocationClient
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
        var capturedImages: Set<Data>
        var initialExtractedData: WineExtractedData
        var abv: Double?
        var millesime: Int?

        var extractedData: [String]
        var extractedStringTypes: [ExtractedStringType]

        var isLoading = false

        @Presents var alert: AlertState<Never>?

        public init(capturedImage: Data, extractedData: WineExtractedData) {
            capturedImages = [capturedImage]
            self.extractedData = extractedData.extractedStrings
            millesime = extractedData.millesime
            abv = extractedData.abv
            initialExtractedData = extractedData
            extractedStringTypes = Array(repeating: .notKept, count: extractedData.extractedStrings.count)
        }
    }

    public enum Action: BindableAction {
        case confirmExtractionButtonTapped
        case selectPictureFromLibraryButtonTapped
        case selectPictureFromCameraButtonTapped
        case removePictureButtonTapped(Data)
        case additionalPictureSelected(Result<[Data], PictureClientError>)
        case additionalOcrPerformed(Result<OcrExtractedData, OcrClientError>)
        case extractedDataPrefetchFinished(Result<PrefetchedData, WineInteractorError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        /// Handled by the Coordinator
        public enum Delegate: Equatable {
            case extractedDataConfirmed(WineConfirmedExtractedData)
        }
    }

    @Dependency(\.appellationInteractor.search) var searchAppellation
    @Dependency(\.grapeVarietyInteractor.search) var searchGrapeVariety
    @Dependency(\.winemakerInteractor.search) var searchWinemaker

    @Dependency(\.pictureClient.selectMultiplePictures) var selectMultiplePictures
    @Dependency(\.ocrClient.performMultipleOcr) var performMultipleOcr
    @Dependency(\.locationClient.search) var searchLocation

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
                        extractedLocation = state.extractedBottlingLocation,
                        searchAppellation,
                        searchWinemaker,
                        searchGrapeVariety,
                        searchLocation
                    ] send in
                        var searchResults = [Result<Any, WineInteractorError>]()
                        var foundAppellation: Appellation?
                        var foundWinemaker: Winemaker?
                        var foundGrapeVarieties = [GrapeVariety]()
                        var foundLocation: Location?

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

                        var locationResult: Result<[Location], LocationClientError>?
                        if let extractedLocation {
                            locationResult = await searchLocation(extractedLocation)
                            if case let .success(locations) = locationResult {
                                foundLocation = locations.first
                            }
                        }

                        let haveAllWineSearchesFailed = !searchResults.isEmpty && searchResults.allSatisfy(\.isFailure)
                        let hasLocationSearchFailed = locationResult?.isFailure ?? true
                        let haveAllFailed = haveAllWineSearchesFailed && hasLocationSearchFailed

                        if haveAllFailed {
                            await send(.extractedDataPrefetchFinished(.failure(.unknown)))
                        } else {
                            let prefetchedData = PrefetchedData(
                                grapeVarieties: foundGrapeVarieties,
                                appellation: foundAppellation,
                                winemaker: foundWinemaker,
                                bottlingLocation: foundLocation
                            )
                            await send(.extractedDataPrefetchFinished(.success(prefetchedData)))
                        }
                    }

                case .selectPictureFromLibraryButtonTapped:
                    return .run { [selectMultiplePictures] send in
                        let result = await selectMultiplePictures(.photoLibrary)
                        await send(.additionalPictureSelected(result))
                    }

                case .selectPictureFromCameraButtonTapped:
                    return .run { [selectMultiplePictures] send in
                        let result = await selectMultiplePictures(.camera)
                        await send(.additionalPictureSelected(result))
                    }

                case let .removePictureButtonTapped(imageData):
                    state.capturedImages.remove(imageData)
                    return .none

                case let .additionalPictureSelected(.success(imageDatas)):
                    state.isLoading = true
                    imageDatas.forEach { state.capturedImages.insert($0) }
                    return .run { [performMultipleOcr] send in
                        let result = await performMultipleOcr(imageDatas)
                        await send(.additionalOcrPerformed(result))
                    }

                case let .additionalPictureSelected(.failure(error)):
                    let errorMessage = "Une erreur s'est produite lors de la sélection de l'image."
                    state.alert = AlertState {
                        TextState([errorMessage, error.localizedDescription].joined(separator: "\n"))
                    }
                    return .none

                case let .additionalOcrPerformed(.success(ocrData)):
                    state.isLoading = false
                    state = state.mergeWith(ocrData)
                    return .none

                case let .additionalOcrPerformed(.failure(error)):
                    let errorMessage = "Une erreur s'est produite lors de l'analyse de l'image."
                    state.alert = AlertState {
                        TextState([errorMessage, error.localizedDescription].joined(separator: "\n"))
                    }
                    state.isLoading = false
                    return .none

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
    case bottlingLocation = "Bottling location"
    case notKept = "Not Kept"

    public var id: String { rawValue }
}

public struct PrefetchedData {
    let grapeVarieties: [GrapeVariety]
    let appellation: Appellation?
    let winemaker: Winemaker?
    let bottlingLocation: Location?
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

    var extractedBottlingLocation: String? {
        getStrings(for: .bottlingLocation).first
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
            pictures: Array(state.capturedImages)
        )
    }
}

// MARK: Merge additional data

private extension WineExtractedData {
    func mergeWith(other: OcrExtractedData) -> WineExtractedData {
        WineExtractedData(
            millesime: millesime ?? other.millesime,
            abv: abv ?? other.abv,
            extractedStrings: extractedStrings + other.extractedStrings
        )
    }
}

private extension WineFeatureOcrExtracted.State {
    func mergeWith(_ other: OcrExtractedData) -> Self {
        var newState = self
        let mergedData = initialExtractedData.mergeWith(other: other)
        newState.initialExtractedData = mergedData
        newState.extractedData = mergedData.extractedStrings
        if let newMillesime = mergedData.millesime {
            newState.millesime = newMillesime
        }
        if let newAbv = mergedData.abv {
            newState.abv = newAbv
        }
        newState.extractedStringTypes += Array(repeating: .notKept, count: other.extractedStrings.count)
        return newState
    }
}
