import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI
import WineCommonLocationClient
import WineInteractor

@Reducer
public struct AddAppellationCountry {
    @ObservableState
    public struct State: Equatable {
        public let existing: Country?

        @Presents var alert: AlertState<Never>?

        public var countries = [LocationCountry]()
        public var filteredCountries = [LocationCountry]()
        public var searchText = ""
        public var isLoading = false

        init(existing: Country?) {
            self.existing = existing
        }
    }

    public enum Action: BindableAction {
        case onAppear
        case startOverButtonTapped
        case countriesLoaded(Result<[LocationCountry], LocationClientError>)
        case countrySelected(LocationCountry)
        case countryCreationFinished(Result<Country, WineInteractorError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Sendable {
            case countryCreated(Country)
        }
    }

    @Dependency(\.locationClient) var locationClient
    @Dependency(\.appellationInteractor.upsertCountry) var upsertCountry

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .onAppear:
                    state.isLoading = true
                    return .run { [fetchAllCountries = locationClient.fetchAllCountries] send in
                        let result = await fetchAllCountries()
                        await send(.countriesLoaded(result))
                    }

                case .startOverButtonTapped:
                    state.searchText = ""
                    state.filteredCountries = state.countries
                    return .none

                case let .countriesLoaded(.success(countries)):
                    state.isLoading = false
                    state.countries = countries.sorted { $0.name < $1.name }
                    state.filteredCountries = state.countries
                    return .none

                case let .countriesLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .countrySelected(country):
                    state.isLoading = true
                    return .run { [upsertCountry, country] send in
                        let result = await upsertCountry(Country(name: country.name, code: country.code))
                        await send(.countryCreationFinished(result))
                    }

                case let .countryCreationFinished(.success(country)):
                    state.isLoading = false
                    return .run { send in await send(.delegate(.countryCreated(country))) }

                case let .countryCreationFinished(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case .binding(\.searchText):
                    if state.searchText.isEmpty {
                        state.filteredCountries = state.countries
                    } else {
                        state.filteredCountries = state.countries.filter { country in
                            country.name.localizedCaseInsensitiveContains(state.searchText)
                                || country.code.localizedCaseInsensitiveContains(state.searchText)
                        }
                    }
                    return .none

                case .alert, .binding, .delegate:
                    return .none
            }
        }
    }
}
