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

        public var availableCountries = [Country]()

        public var isLoading = false

        @Presents var alert: AlertState<Never>?
        @Presents var destination: Destination.State?

        public init() {}
    }

    @Reducer
    public enum Destination {
        case selectVineyard(SelectAppellationPart<Vineyard, WineInteractorError>)
        case selectRegion(SelectAppellationPart<Region, WineInteractorError>)
        case addAppellation(AddAppellationPart<Appellation, WineInteractorError>)
        case addCountry(AddAppellationCountry)
        case addVineyard(AddAppellationPart<Vineyard, WineInteractorError>)
        case addRegion(AddAppellationPart<Region, WineInteractorError>)
    }

    public enum Action: BindableAction {
        case onAppear

        case countriesLoaded(Result<[Country], WineInteractorError>)
        case createCountryButtonTapped
        case countrySelected(Country)

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
                    state.destination = .addCountry(AddAppellationCountry.State(existing: state.selectedCountry))
                    return .none

                case let .destination(.presented(.addCountry(.delegate(.countryCreated(country))))):
                    state.destination = nil
                    return .send(.countrySelected(country))

                case let .countrySelected(country):
                    state.selectedCountry = country
                    state.selectedVineyard = nil
                    state.selectedRegion = nil

                    let fetchHandler: SelectAppellationPart<Vineyard, WineInteractorError>.FetchPartsHandler = { [fetchVineyards = appellationInteractor.fetchAllVineyards, countryId = country.id] in
                        await fetchVineyards(countryId)
                    }
                    state.destination = .selectVineyard(SelectAppellationPart.State(
                        partType: "Vineyard",
                        hierarchy: [Hierarchy(label: "Country", value: country.name)],
                        fetchPartsHandler: fetchHandler
                    ))
                    return .none

                // MARK: Vineyard

                case .destination(.presented(.selectVineyard(.delegate(.goBack)))):
                    state.destination = nil
                    return .none

                case .destination(.presented(.selectVineyard(.delegate(.createPartRequested)))):
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
                    guard let country = state.selectedCountry else { return .none }

                    let fetchHandler: SelectAppellationPart<Vineyard, WineInteractorError>.FetchPartsHandler = { [fetchVineyards = appellationInteractor.fetchAllVineyards, countryId = country.id] in
                        await fetchVineyards(countryId)
                    }
                    state.destination = .selectVineyard(SelectAppellationPart.State(
                        partType: "Vineyard",
                        hierarchy: [Hierarchy(label: "Country", value: country.name)],
                        selectedPart: vineyard,
                        fetchPartsHandler: fetchHandler
                    ))
                    return .none

                case let .destination(.presented(.selectVineyard(.delegate(.partSelected(vineyard))))):
                    state.selectedVineyard = vineyard
                    state.selectedRegion = nil

                    let fetchHandler: SelectAppellationPart<Region, WineInteractorError>.FetchPartsHandler = { [fetchRegions = appellationInteractor.fetchAllRegions, vineyardId = vineyard.id] in
                        await fetchRegions(vineyardId)
                    }
                    state.destination = .selectRegion(SelectAppellationPart.State(
                        partType: "Region",
                        hierarchy: [
                            Hierarchy(label: "Country", value: vineyard.country.name),
                            Hierarchy(label: "Vineyard", value: vineyard.name)
                        ],
                        fetchPartsHandler: fetchHandler
                    ))
                    return .none

                // MARK: Region

                case .destination(.presented(.selectRegion(.delegate(.goBack)))):
                    guard let country = state.selectedCountry else { return .none }

                    let fetchHandler: SelectAppellationPart<Vineyard, WineInteractorError>.FetchPartsHandler = { [fetchVineyards = appellationInteractor.fetchAllVineyards, countryId = country.id] in
                        await fetchVineyards(countryId)
                    }
                    state.destination = .selectVineyard(SelectAppellationPart.State(
                        partType: "Vineyard",
                        hierarchy: [Hierarchy(label: "Country", value: country.name)],
                        selectedPart: state.selectedVineyard,
                        fetchPartsHandler: fetchHandler
                    ))
                    return .none

                case .destination(.presented(.selectRegion(.delegate(.createPartRequested)))):
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
                    guard let vineyard = state.selectedVineyard else { return .none }

                    let fetchHandler: SelectAppellationPart<Region, WineInteractorError>.FetchPartsHandler = { [fetchRegions = appellationInteractor.fetchAllRegions, vineyardId = vineyard.id] in
                        await fetchRegions(vineyardId)
                    }
                    state.destination = .selectRegion(SelectAppellationPart.State(
                        partType: "Region",
                        hierarchy: [
                            Hierarchy(label: "Country", value: vineyard.country.name),
                            Hierarchy(label: "Vineyard", value: vineyard.name)
                        ],
                        selectedPart: region,
                        fetchPartsHandler: fetchHandler
                    ))
                    return .none

                case let .destination(.presented(.selectRegion(.delegate(.partSelected(region))))):
                    state.selectedRegion = region

                    let createHandler: AddAppellationPart<Appellation, WineInteractorError>.CreatePartHandler = { [upsert = appellationInteractor.upsert, region] name in
                        await upsert(Appellation(name: name, region: region))
                    }
                    state.destination = .addAppellation(AddAppellationPart.State(
                        partType: "Appellation",
                        hierarchy: [
                            Hierarchy(label: "Country", value: region.vineyard.country.name),
                            Hierarchy(label: "Vineyard", value: region.vineyard.name),
                            Hierarchy(label: "Region", value: region.name)
                        ],
                        createPartHandler: createHandler
                    ))
                    return .none

                // MARK: Appellation

                case let .destination(.presented(.addAppellation(.delegate(.partCreated(appellation))))):
                    return .send(.delegate(.appellationCreated(appellation)))

                // MARK: Other

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
