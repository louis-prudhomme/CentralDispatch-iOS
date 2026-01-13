import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI
import WineDomain
import WineInteractor

@Reducer
public struct AppellationCoordinator {
    @ObservableState
    public struct State: Equatable {
        var list: AppellationSelection.State
        var destination = StackState<Destination.State>()

        var selectedCountry: Country?
        var selectedVineyard: Vineyard?
        var selectedRegion: Region?

        public init(existing: Appellation?) {
            list = AppellationSelection.State(existing: existing)
        }
    }

    @Reducer
    public enum Destination {
        case countrySelection(CountrySelection)
        case selectVineyard(SelectAppellationPart<Vineyard, WineInteractorError>)
        case selectRegion(SelectAppellationPart<Region, WineInteractorError>)
        case addAppellation(AddAppellationPart<Appellation, WineInteractorError>)
        case addCountry(AddAppellationCountry)
        case addVineyard(AddAppellationPart<Vineyard, WineInteractorError>)
        case addRegion(AddAppellationPart<Region, WineInteractorError>)
    }

    public enum Action: BindableAction {
        case list(AppellationSelection.Action)
        case destination(StackActionOf<Destination>)
        case countrySelected(Country)
        case vineyardSelected(Vineyard)
        case regionSelected(Region)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Equatable {
            case appellationSelected(Appellation)
        }
    }

    @Dependency(\.appellationInteractor) var appellationInteractor

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Scope(state: \.list, action: \.list) {
            AppellationSelection()
        }

        Reduce { state, action in
            switch action {
                // MARK: - Root List Actions

                case let .list(.delegate(.appellationSelected(appellation))):
                    return .send(.delegate(.appellationSelected(appellation)))

                case .list(.delegate(.createNewAppellationRequested)):
                    state.selectedCountry = nil
                    state.selectedVineyard = nil
                    state.selectedRegion = nil

                    let maybeExistingCountry = state.list.existing?.region.vineyard.country
                    state.destination.append(.countrySelection(CountrySelection.State(existing: maybeExistingCountry ?? state.selectedCountry)))
                    return .none

                case .destination(.element(id: _, action: .countrySelection(.delegate(.createCountryRequested)))):
                    state.destination.append(.addCountry(AddAppellationCountry.State(existing: state.selectedCountry)))
                    return .none

                case let .destination(.element(id: _, action: .countrySelection(.delegate(.countrySelected(country))))):
                    return .send(.countrySelected(country))

                // MARK: - Add Country

                case let .destination(.element(id: _, action: .addCountry(.delegate(.countryCreated(country))))):
                    state.destination.removeLast()
                    return .send(.countrySelected(country))

                // MARK: - Vineyard Selection

                case .destination(.element(id: _, action: .selectVineyard(.delegate(.goBack)))):
                    state.destination.removeLast()
                    return .none

                case .destination(.element(id: _, action: .selectVineyard(.delegate(.createPartRequested)))):
                    guard let country = state.selectedCountry else { return .none }

                    let createHandler: AddAppellationPart<Vineyard, WineInteractorError>.CreatePartHandler = { [upsertVineyard = appellationInteractor.upsertVineyard, country] name in
                        await upsertVineyard(Vineyard(name: name, country: country))
                    }
                    state.destination.append(.addVineyard(AddAppellationPart.State(
                        partType: "Vineyard",
                        hierarchy: [Hierarchy(label: "Country", value: country.name)],
                        createPartHandler: createHandler
                    )))
                    return .none

                case let .destination(.element(id: _, action: .selectVineyard(.delegate(.partSelected(vineyard))))):
                    return .send(.vineyardSelected(vineyard))

                // MARK: - Add Vineyard

                case let .destination(.element(id: _, action: .addVineyard(.delegate(.partCreated(vineyard))))):
                    state.destination.removeLast()
                    return .send(.vineyardSelected(vineyard))

                // MARK: - Region Selection

                case .destination(.element(id: _, action: .selectRegion(.delegate(.goBack)))):
                    state.destination.removeLast()
                    return .none

                case .destination(.element(id: _, action: .selectRegion(.delegate(.createPartRequested)))):
                    guard let vineyard = state.selectedVineyard else { return .none }

                    let createHandler: AddAppellationPart<Region, WineInteractorError>.CreatePartHandler = { [upsertRegion = appellationInteractor.upsertRegion, vineyard] name in
                        await upsertRegion(Region(name: name, vineyard: vineyard))
                    }
                    state.destination.append(.addRegion(AddAppellationPart.State(
                        partType: "Region",
                        hierarchy: [
                            Hierarchy(label: "Country", value: vineyard.country.name),
                            Hierarchy(label: "Vineyard", value: vineyard.name)
                        ],
                        createPartHandler: createHandler
                    )))
                    return .none

                case let .destination(.element(id: _, action: .selectRegion(.delegate(.partSelected(region))))):
                    return .send(.regionSelected(region))

                // MARK: - Add Region

                case let .destination(.element(id: _, action: .addRegion(.delegate(.partCreated(region))))):
                    state.destination.removeLast()
                    return .send(.regionSelected(region))

                // MARK: - Add Appellation

                case let .destination(.element(id: _, action: .addAppellation(.delegate(.partCreated(appellation))))):
                    state.destination.removeAll()
                    return .send(.delegate(.appellationSelected(appellation)))

                // MARK: - Internal Actions

                case let .countrySelected(country):
                    state.selectedCountry = country
                    state.selectedVineyard = nil
                    state.selectedRegion = nil

                    state.destination.append(.selectVineyard(SelectAppellationPart.State(
                        partType: "Vineyard",
                        hierarchy: [Hierarchy(label: "Country", value: country.name)],
                        fetchPartsHandler: { [fetchVineyards = appellationInteractor.fetchAllVineyards, countryId = country.id] in
                            await fetchVineyards(countryId)
                        }
                    )))
                    return .none

                case let .vineyardSelected(vineyard):
                    state.selectedVineyard = vineyard
                    state.selectedRegion = nil

                    let fetchHandler: SelectAppellationPart<Region, WineInteractorError>.FetchPartsHandler = { [fetchRegions = appellationInteractor.fetchAllRegions, vineyardId = vineyard.id] in
                        await fetchRegions(vineyardId)
                    }
                    state.destination.append(.selectRegion(SelectAppellationPart.State(
                        partType: "Region",
                        hierarchy: [
                            Hierarchy(label: "Country", value: vineyard.country.name),
                            Hierarchy(label: "Vineyard", value: vineyard.name)
                        ],
                        fetchPartsHandler: fetchHandler
                    )))
                    return .none

                case let .regionSelected(region):
                    state.selectedRegion = region

                    let createHandler: AddAppellationPart<Appellation, WineInteractorError>.CreatePartHandler = { [upsert = appellationInteractor.upsert, region] name in
                        await upsert(Appellation(name: name, region: region))
                    }
                    state.destination.append(.addAppellation(AddAppellationPart.State(
                        partType: "Appellation",
                        hierarchy: [
                            Hierarchy(label: "Country", value: region.vineyard.country.name),
                            Hierarchy(label: "Vineyard", value: region.vineyard.name),
                            Hierarchy(label: "Region", value: region.name)
                        ],
                        createPartHandler: createHandler
                    )))
                    return .none

                case .list:
                    return .none

                case .destination:
                    return .none

                case .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
        .forEach(\.destination, action: \.destination)
    }
}

// MARK: - Conformances

extension AppellationCoordinator.Destination.State: Equatable {}

extension Country: AppellationPart {}
extension Vineyard: AppellationPart {}
extension Region: AppellationPart {}
extension Appellation: AppellationPart {}
