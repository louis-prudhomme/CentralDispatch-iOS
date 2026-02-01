import Foundation
import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonPictureClient
import WineDomain
import WineFeatureAppellationSelection
import WineInteractor

@Reducer
public struct WineFeatureAddWine {
    @ObservableState
    public struct State: Equatable {
        var partialWine = PartialWineBottle()
        var isLoading = false

        var suggested: SuggestedData?

        @Presents var alert: AlertState<Never>?
        @Presents var destination: Destination.State?

        public init() {}

        public init(suggested: SuggestedData) {
            @Dependency(\.date) var date
            @Dependency(\.calendar) var calendar

            let currentYear = calendar.component(.year, from: date())

            partialWine = PartialWineBottle(
                name: suggested.name ?? "",
                millesime: suggested.millesime ?? currentYear,
                abv: suggested.abv ?? 12.5,
                winemaker: suggested.winemaker,
                grapeVarieties: suggested.grapeVarieties,
                appellation: suggested.appellation,
                bottlingLocation: suggested.bottlingLocation.map(WineBottlingLocation.init(from:)),
                pictures: suggested.pictures,
                wineColor: suggested.color ?? .red
            )
            self.suggested = suggested
        }
    }

    @Reducer
    public enum Destination {
        case winemaker(MultipleChoiceSelection<Winemaker, WineInteractorError>)
        case grapeVarieties(MultipleChoiceSelection<GrapeVariety, WineInteractorError>)
        case appellation(AppellationCoordinator)
        case bottlingLocation(BottlingLocationSelection)
    }

    public enum Action: BindableAction {
        case submitButtonTapped
        case selectWinemakerButtonTapped
        case selectGrapeVarietiesButtonTapped
        case selectAppellationButtonTapped
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

        Reduce {
            state,
                action in
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
                        suggested: state.suggested?.winemakerName,
                        delegate: winemakerInteractorDelegate
                    ))
                    return .none

                case .selectGrapeVarietiesButtonTapped:
                    let grapeVarietyInteractorDelegate = MultipleChoiceInteractorDelegate<GrapeVariety, WineInteractorError>(
                        fetchChoices: grapeVarietyInteractor.search,
                        createChoice: { [upsert = grapeVarietyInteractor.upsert] name in await upsert(GrapeVariety(name: name, description: "", color: .black, synonyms: [])) },
                        getDisplayName: { $0.name }
                    )
                    state.destination = .grapeVarieties(MultipleChoiceSelection<GrapeVariety, WineInteractorError>.State(
                        title: "Grape Varieties",
                        isMultiSelect: true,
                        suggested: state.suggestedGrapeVarietyNames,
                        delegate: grapeVarietyInteractorDelegate
                    ))
                    return .none

                case .selectAppellationButtonTapped:
                    state.destination = .appellation(AppellationCoordinator.State(existing: state.partialWine.appellation))
                    return .none

                case .selectBottlingLocationButtonTapped:
                    state.destination = .bottlingLocation(BottlingLocationSelection.State(
                        existing: state.partialWine.bottlingLocation?.name,
                        suggested: state.suggested?.bottlingLocationName
                    ))
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
                    state.partialWine.pictures.append(data)
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

                case let .destination(.presented(.appellation(.delegate(.appellationSelected(appellation))))):
                    state.partialWine.appellation = appellation
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

// MARK: Helpers

extension WineFeatureAddWine.State {
    var suggestedGrapeVarietyNames: [String] {
        guard let grapeVarietyNames = suggested?.grapeVarietyNames else {
            return []
        }

        let selectedGrapeVarietyNames = Set(partialWine.grapeVarieties.map(\.name))
        return grapeVarietyNames.filter { !selectedGrapeVarietyNames.contains($0) }
    }
}
