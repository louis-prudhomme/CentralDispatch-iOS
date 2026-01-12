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
        @Presents var destination: Destination.State?

        public init() {}
    }

    @Reducer
    public enum Destination {
        case vineyardSelection
        case regionSelection
        case appellationName
        case addCountry(AddAppellationPart<Country, WineInteractorError>)
        case addVineyard(AddAppellationPart<Vineyard, WineInteractorError>)
        case addRegion(AddAppellationPart<Region, WineInteractorError>)
    }

    public enum Action: BindableAction {
        case onAppear
        case goBackButtonTapped

        case countriesLoaded(Result<[Country], WineInteractorError>)
        case createCountryButtonTapped
        case createCountryFinished(Result<Country, WineInteractorError>)
        case countrySelected(Country)

        case vineyardsLoaded(Result<[Vineyard], WineInteractorError>)
        case createVineyardButtonTapped
        case createVineyardFinished(Result<Vineyard, WineInteractorError>)
        case vineyardSelected(Vineyard)

        case regionsLoaded(Result<[Region], WineInteractorError>)
        case createRegionButtonTapped
        case createRegionFinished(Result<Region, WineInteractorError>)
        case regionSelected(Region)

        case submitAppellationButtonTapped
        case appellationCreated(Result<Appellation, WineInteractorError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case destination(PresentationAction<Destination.Action>)
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
                    state.destination = nil
                    return .none

                // MARK: Country

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

                case .createCountryButtonTapped:
                    let createHandler: AddAppellationPart<Country, WineInteractorError>.CreatePartHandler = { [upsertCountry = appellationInteractor.upsertCountry] name in
                        await upsertCountry(Country(name: name, code: name)) // FIXME: ugly as hell + buggy
                    }
                    state.destination = .addCountry(AddAppellationPart.State(
                        partType: "Country",
                        createPartHandler: createHandler
                    ))
                    return .none

                case let .destination(.presented(.addCountry(.delegate(.partCreated(country))))):
                    state.destination = nil
                    state.isLoading = true
                    return .run { [country] send in
                        await send(.countrySelected(country))
                    }

                case let .countrySelected(country):
                    state.selectedCountry = country
                    state.selectedVineyard = nil
                    state.selectedRegion = nil
                    state.isLoading = true
                    return .run { [fetchVineyards = appellationInteractor.fetchAllVineyards, countryId = country.id] send in
                        let result = await fetchVineyards(countryId)
                        await send(.vineyardsLoaded(result))
                    }

                // MARK: Vineyard

                case let .vineyardsLoaded(.success(vineyards)):
                    state.isLoading = false
                    state.availableVineyards = vineyards
                    state.destination = .vineyardSelection
                    return .none

                case let .vineyardsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case .createVineyardButtonTapped:
                    guard let country = state.selectedCountry else { return .none }

                    let createHandler: AddAppellationPart<Vineyard, WineInteractorError>.CreatePartHandler = { [upsertVineyard = appellationInteractor.upsertVineyard, country] name in
                        await upsertVineyard(Vineyard(name: name, country: country))
                    }
                    state.destination = .addVineyard(AddAppellationPart.State(
                        partType: "Vineyard",
                        createPartHandler: createHandler
                    ))
                    return .none

                case let .destination(.presented(.addVineyard(.delegate(.partCreated(vineyard))))):
                    state.destination = nil
                    state.isLoading = true
                    return .run { [vineyard] send in
                        await send(.vineyardSelected(vineyard))
                    }

                case let .vineyardSelected(vineyard):
                    state.selectedVineyard = vineyard
                    state.selectedRegion = nil
                    state.isLoading = true
                    return .run { [fetchRegions = appellationInteractor.fetchAllRegions, vineyardId = vineyard.id] send in
                        let result = await fetchRegions(vineyardId)
                        await send(.regionsLoaded(result))
                    }

                // MARK: Region

                case let .regionsLoaded(.success(regions)):
                    state.isLoading = false
                    state.availableRegions = regions
                    state.destination = .regionSelection
                    return .none

                case let .regionsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case .createRegionButtonTapped:
                    guard let vineyard = state.selectedVineyard else { return .none }

                    let createHandler: AddAppellationPart<Region, WineInteractorError>.CreatePartHandler = { [upsertRegion = appellationInteractor.upsertRegion, vineyard] name in
                        await upsertRegion(Region(name: name, vineyard: vineyard))
                    }
                    state.destination = .addRegion(AddAppellationPart.State(
                        partType: "Region",
                        createPartHandler: createHandler
                    ))
                    return .none

                case let .destination(.presented(.addRegion(.delegate(.partCreated(region))))):
                    state.destination = nil
                    state.isLoading = true
                    return .run { [region] send in
                        await send(.regionSelected(region))
                    }

                case let .regionSelected(region):
                    state.selectedRegion = region
                    state.destination = .appellationName
                    return .none

                // MARK: Appellation

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

                // MARK: Other

                case .createCountryFinished, .createRegionFinished, .createVineyardFinished:
                    return .none

                case .alert, .binding:
                    return .none

                case .destination:
                    return .none

                case .delegate:
                    return .none
            }
        }
        .ifLet(\.$destination, action: \.destination)
    }
}

// MARK: Conformances

extension AppellationCreation.Destination.State: Equatable {}
