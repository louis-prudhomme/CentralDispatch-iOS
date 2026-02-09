import Foundation
import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonPictureClient
import SharedCommonUtilities
import UIKit
import Vision
import WineCommonLocationClient
import WineCommonOcrClient
import WineInteractor

@Reducer
public struct WineFeatureOcrExtracted {
    @ObservableState
    public struct State: Equatable {
        var capturedImages: Set<Data>
        var initialExtractedData: WineExtractedData
        var abv: Double?
        var millesime: Int?

        var extractedData: [ExtractedDatum]

        var isLoading = false
        var isDisabled = false
        var isEditing = false

        var extractedDataBeforeEditing: [ExtractedDatum]?
        var selectedIndexes = [Int]()

        @Presents var alert: AlertState<Never>?

        public init(capturedImage: Data, extractedData: WineExtractedData) {
            capturedImages = [capturedImage]
            self.extractedData = extractedData.extractedStrings.map { ExtractedDatum(string: $0, type: .notKept) }
            millesime = extractedData.millesime
            abv = extractedData.abv
            initialExtractedData = extractedData
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

        case editButtonTapped
        case rowSelectionToggled(Int, Bool)
        case mergeSelectedButtonTapped
        case deleteSelectedButtonTapped
        case cancelEditingButtonTapped
        case doneEditingButtonTapped

        case deleteExtractedString(at: Int)
        case splitExtractedString(at: Int)
        case mergeExtractedStringWithPrevious(at: Int)

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
                    let errorMessage = "An error occured during image selection. Please try again."
                    state.alert = AlertState {
                        TextState([errorMessage, error.localizedDescription].joined(separator: "\n"))
                    }
                    return .none

                case let .additionalOcrPerformed(.success(ocrData)):
                    state.isLoading = false
                    state = state.mergeWith(ocrData)
                    return .none

                case let .additionalOcrPerformed(.failure(error)):
                    let errorMessage = "An error occured during image analysis. Please try again."
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
                    let errorMessage = "An error occured. Please try again."
                    state.alert = AlertState {
                        TextState([errorMessage, error.localizedDescription].joined(separator: "\n"))
                    }
                    state.isLoading = false
                    return .none

                case .editButtonTapped:
                    state.extractedDataBeforeEditing = state.extractedData
                    state.isEditing = true
                    return .none

                case let .rowSelectionToggled(index, isSelected):
                    if isSelected {
                        state.selectedIndexes.append(index)
                    } else {
                        state.selectedIndexes.removeAll { $0 == index }
                    }
                    return .none

                case .mergeSelectedButtonTapped:
                    let sortedIndexes = state.selectedIndexes.sorted(by: <)
                    guard sortedIndexes.count > 1 else { return .none }
                    guard let firstIndex = sortedIndexes.first else { return .none }

                    state.extractedData[firstIndex].string = sortedIndexes
                        .compactMap { state.extractedData[$0] }
                        .map(\.string)
                        .joined(separator: " ")
                    for index in sortedIndexes.reversed() where index != firstIndex {
                        state.extractedData.remove(at: index)
                    }
                    state.selectedIndexes = []

                    return .none

                case .deleteSelectedButtonTapped:
                    for index in state.selectedIndexes {
                        state.extractedData.remove(at: index)
                    }
                    state.selectedIndexes = []
                    return .none

                case .cancelEditingButtonTapped:
                    state.extractedData = state.extractedDataBeforeEditing ?? state.extractedData
                    state.extractedDataBeforeEditing = nil
                    state.isEditing = false
                    state.selectedIndexes = []
                    return .none

                case .doneEditingButtonTapped:
                    state.extractedDataBeforeEditing = nil
                    state.isEditing = false
                    state.selectedIndexes = []
                    return .none

                case let .deleteExtractedString(at: index):
                    state.extractedData.remove(at: index)
                    return .none

                case let .splitExtractedString(at: index):
                    let toSplit = state.extractedData[index]
                    let rawParts = toSplit
                        .string
                        .split(separator: " ")
                        .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                        .filter { !$0.isEmpty }
                    let parts = rawParts.map { ExtractedDatum(string: $0, type: .notKept) }
                    state.extractedData.remove(at: index)
                    state.extractedData.insert(contentsOf: parts, at: index)
                    state.selectedIndexes = []
                    return .none

                case let .mergeExtractedStringWithPrevious(at: index):
                    let toMerge = state.extractedData[index].string
                    let previous = state.extractedData[index - 1].string
                    state.extractedData.remove(at: index)
                    state.extractedData[index - 1].string = "\(previous) \(toMerge)"
                    state.selectedIndexes = []
                    return .none

                case .alert:
                    return .none

                case .binding(\.extractedData):
                    let uniqueTags: [ExtractedStringType] = [.appellation, .name, .bottlingLocation, .winemaker]
                    let uniqueTagsCount = state.extractedData.map(\.type).reduce(into: [ExtractedStringType: Int]()) { counts, type in
                        if uniqueTags.contains(type) {
                            counts[type, default: 0] += 1
                        }
                    }
                    for (type, count) in uniqueTagsCount where count > 1 {
                        state.alert = AlertState {
                            TextState("Multiple properties tagged '\(type.rawValue)' were detected. Only one is allowed.")
                        }
                        state.isDisabled = true
                        return .none
                    }

                    state.isDisabled = false
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

struct ExtractedDatum: Equatable {
    var string: String
    var type = ExtractedStringType.notKept
}

public enum ExtractedStringType: String, CaseIterable, Equatable, Codable, Identifiable {
    case grapeVariety = "Grape Variety"
    case appellation = "Appellation"
    case winemaker = "Winemaker"
    case name = "Name"
    case bottlingLocation = "Bottling location"
    case notKept = "Not Kept"

    public var id: String {
        rawValue
    }
}

public struct PrefetchedData {
    let grapeVarieties: [GrapeVariety]
    let appellation: Appellation?
    let winemaker: Winemaker?
    let bottlingLocation: Location?
}

// MARK: - Helper

// MARK: Extracted strings accessors

extension WineFeatureOcrExtracted.State {
    func getStrings(for wantedType: ExtractedStringType) -> [String] {
        extractedData.filter { $0.type == wantedType }.map(\.string)
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

    var extractedName: String? {
        getStrings(for: .name).first
    }
}

// MARK: Wine color extraction

extension WineFeatureOcrExtracted.State {
    var extractedWineColor: WineColor? {
        for data in extractedData {
            let lowercased = data.string.lowercased()

            if lowercased.contains("red") || lowercased.contains("rouge") {
                return .red
            } else if lowercased.contains("white") || lowercased.contains("blanc") {
                return .white
            } else if lowercased.contains("rosé") || lowercased.contains("rose") {
                return .rosé
            }
        }

        return nil
    }
}

// MARK: Merge additional data

private extension WineFeatureOcrExtracted.State {
    func mergeWith(_ other: OcrExtractedData) -> Self {
        var mergedState = self
        if let newMillesime = other.millesime {
            mergedState.millesime = newMillesime
        }
        if let newAbv = other.abv {
            mergedState.abv = newAbv
        }
        let newData = other.extractedStrings.map { ExtractedDatum(string: $0, type: .notKept) }
        mergedState.extractedData.append(contentsOf: newData)

        return mergedState
    }
}

// MARK: - Adapters

private extension WineConfirmedExtractedData {
    init(from state: WineFeatureOcrExtracted.State, and prefetchedData: PrefetchedData) {
        self.init(
            millesime: state.initialExtractedData.millesime,
            abv: state.initialExtractedData.abv,
            appellationName: state.extractedAppellation,
            grapeVarietyNames: state.extractedGrapeVarieties,
            winemakerName: state.extractedWinemaker,
            bottlingLocationName: state.extractedBottlingLocation,
            appellation: prefetchedData.appellation,
            grapeVarieties: prefetchedData.grapeVarieties,
            winemaker: prefetchedData.winemaker,
            bottlingLocation: prefetchedData.bottlingLocation,
            name: state.extractedName,
            color: state.extractedWineColor,
            pictures: Array(state.capturedImages)
        )
    }
}
