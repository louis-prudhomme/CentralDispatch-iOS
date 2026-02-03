import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI
import WineDomain
import WineInteractor

@Reducer
public struct AppellationSelection {
    @ObservableState
    public struct State: Equatable {
        public var existing: Appellation?
        public var searchText = ""
        public var suggestedAppellations = [Appellation]()
        public var isLoading = false

        @Presents var alert: AlertState<Never>?

        public init(existing: Appellation?) {
            self.existing = existing
        }
    }

    public enum Action: BindableAction {
        case onAppear
        case appellationsLoaded(Result<[Appellation], WineInteractorError>)
        case appellationSelected(Appellation)
        case createNewAppellationButtonTapped

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Equatable, Sendable {
            case appellationSelected(Appellation)
            case createNewAppellationRequested
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

                    return .run { [search = appellationInteractor.search] send in
                        let result = await search("")
                        await send(.appellationsLoaded(result))
                    }

                case .binding(\.searchText):
                    guard !state.searchText.isEmpty else {
                        return .none
                    }

                    state.isLoading = true

                    return .run { [searchText = state.searchText, search = appellationInteractor.search] send in
                        let result = await search(searchText)
                        await send(.appellationsLoaded(result))
                    }

                case let .appellationsLoaded(.success(appellations)):
                    state.isLoading = false
                    state.suggestedAppellations = appellations
                    return .none

                case let .appellationsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .appellationSelected(appellation):
                    return .send(.delegate(.appellationSelected(appellation)))

                case .createNewAppellationButtonTapped:
                    return .send(.delegate(.createNewAppellationRequested))

                case .alert, .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }
}
