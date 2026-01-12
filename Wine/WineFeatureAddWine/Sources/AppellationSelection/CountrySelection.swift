import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI
import WineDomain
import WineInteractor

@Reducer
public struct CountrySelection {
    @ObservableState
    public struct State: Equatable {
        public var existing: Country?
        public var selectedCountry: Country?
        public var availableCountries = [Country]()
        public var isLoading = false

        @Presents var alert: AlertState<Never>?

        public init(existing: Country?) {
            self.existing = existing
        }
    }

    public enum Action: BindableAction {
        case onAppear
        case countriesLoaded(Result<[Country], WineInteractorError>)
        case countrySelected(Country)
        case createCountryButtonTapped

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Equatable {
            case countrySelected(Country)
            case createCountryRequested
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

                case let .countrySelected(country):
                    state.selectedCountry = country
                    return .send(.delegate(.countrySelected(country)))

                case .createCountryButtonTapped:
                    return .send(.delegate(.createCountryRequested))

                case .alert, .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }
}
