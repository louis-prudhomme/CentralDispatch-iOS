import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI

@Reducer
public struct SelectAppellationPart<Part: AppellationPart, IError: ClientError> {
    @ObservableState
    public struct State: Equatable {
        public let partType: String
        public let hierarchy: [Hierarchy]
        public let fetchPartsHandler: FetchPartsHandler

        public var availableParts: [Part]
        public var selectedPart: Part?
        public var isLoading = false

        @Presents var alert: AlertState<Never>?

        public init(
            partType: String,
            hierarchy: [Hierarchy] = [],
            selectedPart: Part? = nil,
            fetchPartsHandler: @escaping FetchPartsHandler
        ) {
            self.partType = partType
            self.hierarchy = hierarchy
            self.selectedPart = selectedPart
            self.fetchPartsHandler = fetchPartsHandler
            availableParts = []
        }

        public static func == (lhs: SelectAppellationPart<Part, IError>.State, rhs: SelectAppellationPart<Part, IError>.State) -> Bool {
            lhs.partType == rhs.partType
                && lhs.hierarchy == rhs.hierarchy
                && lhs.availableParts == rhs.availableParts
                && lhs.selectedPart == rhs.selectedPart
                && lhs.isLoading == rhs.isLoading
        }
    }

    public enum Action: BindableAction {
        case onAppear
        case partsLoaded(Result<[Part], IError>)
        case partSelected(Part)
        case createPartButtonTapped
        case goBackButtonTapped

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Sendable {
            case partSelected(Part)
            case createPartRequested
            case goBack
        }
    }

    public typealias FetchPartsHandler = @Sendable () async -> Result<[Part], IError>

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .onAppear:
                    state.isLoading = true
                    return .run { [fetchPartsHandler = state.fetchPartsHandler] send in
                        let result = await fetchPartsHandler()
                        await send(.partsLoaded(result))
                    }

                case let .partsLoaded(.success(parts)):
                    state.isLoading = false
                    state.availableParts = parts
                    return .none

                case let .partsLoaded(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .partSelected(part):
                    return .run { send in
                        await send(.delegate(.partSelected(part)))
                    }

                case .createPartButtonTapped:
                    return .run { send in
                        await send(.delegate(.createPartRequested))
                    }

                case .goBackButtonTapped:
                    return .run { send in
                        await send(.delegate(.goBack))
                    }

                case .alert, .binding, .delegate:
                    return .none
            }
        }
    }
}

// MARK: - Companion types

public struct Hierarchy: Identifiable, Equatable {
    let label: String
    let value: String

    public var id: String {
        label
    }
}
