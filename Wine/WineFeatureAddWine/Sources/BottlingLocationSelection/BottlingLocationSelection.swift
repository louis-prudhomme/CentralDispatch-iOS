@preconcurrency import Dispatch // FIXME: not acceptable
import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI
import WineCommonLocationClient
import WineInteractor

@Reducer
public struct BottlingLocationSelection {
    @ObservableState
    public struct State: Equatable {
        public var existing: String?
        public var searchText = ""
        public var suggestedLocations = [Location]()
        public var isLoading = false

        @Presents var alert: AlertState<Never>?

        public init(existing: String?) {
            self.existing = existing
            if let existing, !existing.isEmpty {
                searchText = existing
            }
        }
    }

    public enum Action: BindableAction, Sendable {
        case onAppear
        case locationsLoaded(Result<[Location], LocationClientError>)
        case locationSelected(Location)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Equatable, Sendable {
            case locationSelected(WineBottlingLocation)
        }
    }

    @Dependency(\.locationClient.search) var search
    @Dependency(\.mainQueue) var scheduler

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .binding(\.searchText), .onAppear:
                    guard !state.searchText.isEmpty else {
                        state.suggestedLocations = []
                        return .none
                    }

                    state.isLoading = true

                    return .run { [searchText = state.searchText, search] send in
                        let result = await search(searchText)
                        await send(.locationsLoaded(result))
                    }
                    .debounce(
                        id: Cancellables.search,
                        for: .milliseconds(300),
                        scheduler: scheduler
                    )

                case let .locationsLoaded(.success(locations)):
                    state.isLoading = false
                    state.suggestedLocations = locations
                    return .none

                case let .locationsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .locationSelected(location):
                    return .run { send in
                        await send(.delegate(.locationSelected(WineBottlingLocation(from: location))))
                    }

                case .alert, .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }

    private enum Cancellables {
        case search
    }
}
