import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI
import WineDomain
import WineInteractor

@Reducer
public struct AppellationCreation {
    @ObservableState
    public struct State: Equatable {
        public var selectedCountry: Country?
        public var selectedVineyard: Vineyard?
        public var selectedRegion: Region?
        public var newAppellationName = ""

        public var availableCountries = [Country]()
        public var availableVineyards = [Vineyard]()
        public var availableRegions = [Region]()

        public var isLoading = false

        @Presents var alert: AlertState<Never>?
        @Presents var currentStep: Destination.State?

        public init() {}
    }

    @Reducer
    public enum Destination {
        case vineyardSelection
        case regionSelection
        case appellationName
    }

    public enum Action: BindableAction {
        case onAppear
        case goBackButtonTapped
        case countriesLoaded(Result<[Country], WineInteractorError>)
        case vineyardsLoaded(Result<[Vineyard], WineInteractorError>)
        case regionsLoaded(Result<[Region], WineInteractorError>)
        case countrySelected(Country)
        case vineyardSelected(Vineyard)
        case regionSelected(Region)
        case submitAppellationButtonTapped
        case appellationCreated(Result<Appellation, WineInteractorError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case currentStep(PresentationAction<Destination.Action>)
        case delegate(Delegate)

        public enum Delegate: Equatable {
            case appellationCreated(Appellation)
        }
    }

    @Dependency(\.appellationInteractor) var appellationInteractor

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .onAppear:
                    state.isLoading = true
                    return .run { [fetchCountries = appellationInteractor.fetchAllCountries] send in
                        let result = await fetchCountries()
                        await send(.countriesLoaded(result))
                    }

                case .goBackButtonTapped:
                    state.currentStep = nil
                    return .none

                case let .countriesLoaded(.success(countries)):
                    state.isLoading = false
                    state.availableCountries = countries
                    return .none

                case let .countriesLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .vineyardsLoaded(.success(vineyards)):
                    state.isLoading = false
                    state.availableVineyards = vineyards
                    state.currentStep = .vineyardSelection
                    return .none

                case let .vineyardsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .regionsLoaded(.success(regions)):
                    state.isLoading = false
                    state.availableRegions = regions
                    state.currentStep = .regionSelection
                    return .none

                case let .regionsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .countrySelected(country):
                    state.selectedCountry = country
                    state.selectedVineyard = nil
                    state.selectedRegion = nil
                    state.isLoading = true
                    return .run { [fetchVineyards = appellationInteractor.fetchAllVineyards, countryId = country.id] send in
                        let result = await fetchVineyards(countryId)
                        await send(.vineyardsLoaded(result))
                    }

                case let .vineyardSelected(vineyard):
                    state.selectedVineyard = vineyard
                    state.selectedRegion = nil
                    state.isLoading = true
                    return .run { [fetchRegions = appellationInteractor.fetchAllRegions, vineyardId = vineyard.id] send in
                        let result = await fetchRegions(vineyardId)
                        await send(.regionsLoaded(result))
                    }

                case let .regionSelected(region):
                    state.selectedRegion = region
                    state.currentStep = .appellationName
                    return .none

                case .submitAppellationButtonTapped:
                    guard let region = state.selectedRegion,
                          !state.newAppellationName.isEmpty
                    else {
                        return .none
                    }

                    state.isLoading = true
                    let newAppellation = Appellation(name: state.newAppellationName, region: region)

                    return .run { [upsert = appellationInteractor.upsert, newAppellation] send in
                        let result = await upsert(newAppellation)
                        await send(.appellationCreated(result))
                    }

                case let .appellationCreated(.success(appellation)):
                    state.isLoading = false
                    return .send(.delegate(.appellationCreated(appellation)))

                case let .appellationCreated(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case .alert, .binding:
                    return .none

                case .currentStep:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }
}

// MARK: Conformances

extension AppellationCreation.Destination.State: Equatable {}
