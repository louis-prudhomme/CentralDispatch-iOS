import Foundation
import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonPictureClient
import WineDomain
import WineInteractor

@Reducer
public struct WineFeatureAddWine {
    @ObservableState
    public struct State: Equatable {
        var partialWine = PartialWineBottle()
        var isLoading = false

        var ocrExtractedStrings = [String]()

        @Presents var alert: AlertState<Never>?
        @Presents var destination: Destination.State?

        public init() {}

        /// Initialize with pre-filled data from OCR extraction
        public init(
            name: String = "",
            millesime: Int? = nil,
            abv: Double? = nil,
            picture: Data? = nil,
            extractedStrings: [String] = []
        ) {
            @Dependency(\.date) var date
            @Dependency(\.calendar) var calendar

            let currentYear = calendar.component(.year, from: date())

            partialWine = PartialWineBottle(
                name: name,
                millesime: millesime ?? currentYear,
                abv: abv ?? 12.5,
                picture: picture
            )
            ocrExtractedStrings = extractedStrings
        }
    }

    @Reducer
    public enum Destination {
        case winemaker(MultipleChoiceSelection<Winemaker, WineInteractorError>)
        case grapeVarieties(MultipleChoiceSelection<GrapeVariety, WineInteractorError>)
        case bottlingLocation(BottlingLocationSelection)
    }

    public enum Action: BindableAction {
        case submitButtonTapped
        case selectWinemakerButtonTapped
        case selectGrapeVarietiesButtonTapped
        case selectBottlingLocationButtonTapped
        case selectPictureFromCameraButtonTapped
        case selectPictureFromLibraryButtonTapped
        case pictureSelected(Result<Data, PictureClientError>)
        case wineAdditionFinished(Result<WineBottle, WineInteractorError>)

        case alert(PresentationAction<Never>)
        case destination(PresentationAction<Destination.Action>)
        case binding(BindingAction<State>)
        case delegate(Delegate)
    }

    public enum Delegate {
        case wineAdded
    }

    public init() {}

    @Dependency(\.wineInteractor) var wineInteractor
    @Dependency(\.winemakerInteractor) var winemakerInteractor
    @Dependency(\.grapeVarietyInteractor) var grapeVarietyInteractor
    @Dependency(\.pictureClient.selectPicture) var selectPicture

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .submitButtonTapped:
                    return .run { [create = wineInteractor.create, partialWine = state.partialWine] send in
                        let result = await create(partialWine)
                        await send(.wineAdditionFinished(result))
                    }

                case .selectWinemakerButtonTapped:
                    let winemakerInteractorDelegate = MultipleChoiceInteractorDelegate<Winemaker, WineInteractorError>(
                        fetchChoices: winemakerInteractor.search,
                        createChoice: { [upsert = winemakerInteractor.upsert] name in await upsert(Winemaker(name: name)) },
                        getDisplayName: { $0.name }
                    )
                    state.destination = .winemaker(MultipleChoiceSelection<Winemaker, WineInteractorError>.State(
                        title: "Winemaker",
                        isMultiSelect: false,
                        delegate: winemakerInteractorDelegate
                    ))
                    return .none

                case .selectGrapeVarietiesButtonTapped:
                    let grapeVarietyInteractorDelegate = MultipleChoiceInteractorDelegate<GrapeVariety, WineInteractorError>(
                        fetchChoices: grapeVarietyInteractor.search,
                        createChoice: { [upsert = grapeVarietyInteractor.upsert] name in await upsert(GrapeVariety(name: name)) },
                        getDisplayName: { $0.name }
                    )
                    state.destination = .grapeVarieties(MultipleChoiceSelection<GrapeVariety, WineInteractorError>.State(
                        title: "Grape Varieties",
                        isMultiSelect: true,
                        delegate: grapeVarietyInteractorDelegate
                    ))
                    return .none

                case .selectBottlingLocationButtonTapped:
                    state.destination = .bottlingLocation(BottlingLocationSelection.State(existing: state.partialWine.bottlingLocation?.name))
                    return .none

                case .selectPictureFromCameraButtonTapped:
                    return .run { [selectPicture] send in
                        let result = await selectPicture(.camera)
                        await send(.pictureSelected(result))
                    }

                case .selectPictureFromLibraryButtonTapped:
                    return .run { [selectPicture] send in
                        let result = await selectPicture(.photoLibrary)
                        await send(.pictureSelected(result))
                    }

                case let .pictureSelected(.success(data)):
                    state.partialWine.picture = data
                    return .none

                case .pictureSelected(.failure(.cancelled)):
                    return .none

                case let .pictureSelected(.failure(error)):
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .wineAdditionFinished(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case .wineAdditionFinished(.success):
                    state.isLoading = false
                    return .send(.delegate(.wineAdded))

                case let .destination(.presented(.winemaker(.delegate(.choicesSelected(winemakers))))):
                    state.partialWine.winemaker = winemakers.first
                    state.destination = nil
                    return .none

                case let .destination(.presented(.grapeVarieties(.delegate(.choicesSelected(grapeVarieties))))):
                    state.partialWine.grapeVarieties = grapeVarieties
                    state.destination = nil
                    return .none

                case let .destination(.presented(.bottlingLocation(.delegate(.locationSelected(location))))):
                    state.partialWine.bottlingLocation = location
                    state.destination = nil
                    return .none

                case .delegate:
                    return .none

                case .destination:
                    return .none

                case .alert:
                    return .none

                case .binding:
                    return .none
            }
        }
        .ifLet(\.$destination, action: \.destination)
    }
}

// MARK: Conformances

extension Winemaker: Choosable {}
extension GrapeVariety: Choosable {}
extension WineFeatureAddWine.Destination.State: Equatable {}
