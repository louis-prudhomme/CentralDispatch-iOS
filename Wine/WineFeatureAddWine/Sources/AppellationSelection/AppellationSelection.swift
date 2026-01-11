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
        @Presents var destination: Destination.State?

        public init(existing: Appellation?) {
            self.existing = existing
        }
    }

    @Reducer
    public enum Destination {
        case creation(AppellationCreation)
    }

    public enum Action: BindableAction {
        case appellationsLoaded(Result<[Appellation], WineInteractorError>)
        case appellationSelected(Appellation)
        case createNewAppellationButtonTapped

        case destination(PresentationAction<Destination.Action>)
        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Equatable, Sendable {
            case appellationSelected(Appellation)
        }
    }

    @Dependency(\.appellationInteractor) var appellationInteractor

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .binding(\.searchText):
                    guard !state.searchText.isEmpty else {
                        state.suggestedAppellations = []
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
                    state.destination = .creation(AppellationCreation.State())
                    return .none

                case let .destination(.presented(.creation(.delegate(.appellationCreated(appellation))))):
                    state.destination = nil
                    return .send(.delegate(.appellationSelected(appellation)))

                case .destination:
                    return .none

                case .alert, .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
        .ifLet(\.$destination, action: \.destination)
    }
}

// MARK: - Conformances

extension AppellationSelection.Destination.State: Equatable {}
