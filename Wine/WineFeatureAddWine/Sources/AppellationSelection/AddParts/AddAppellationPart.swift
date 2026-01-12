import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI

@Reducer
public struct AddAppellationPart<Part: AppellationPart, IError: ClientError> {
    @ObservableState
    public struct State: Equatable {
        public let partType: String
        public let hierarchy: [Hierarchy]
        public let createPartHandler: CreatePartHandler

        @Presents var alert: AlertState<Never>?

        public var partName = ""
        public var isLoading = false

        public init(
            partType: String,
            hierarchy: [Hierarchy] = [],
            createPartHandler: @escaping CreatePartHandler
        ) {
            self.partType = partType
            self.hierarchy = hierarchy
            self.createPartHandler = createPartHandler
        }

        public static func == (lhs: AddAppellationPart<Part, IError>.State, rhs: AddAppellationPart<Part, IError>.State) -> Bool {
            lhs.partType == rhs.partType
                && lhs.hierarchy == rhs.hierarchy
                && lhs.partName == rhs.partName
                && lhs.isLoading == rhs.isLoading
        }
    }

    public enum Action: BindableAction {
        case submitPartButtonTapped
        case partCreationFinished(Result<Part, IError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Sendable {
            case partCreated(Part)
        }
    }

    public typealias CreatePartHandler = @Sendable (String) async -> Result<Part, IError>

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .submitPartButtonTapped:
                    state.isLoading = true

                    return .run { [createPartHandler = state.createPartHandler, partName = state.partName] send in
                        let result = await createPartHandler(partName)
                        await send(.partCreationFinished(result))
                    }

                case let .partCreationFinished(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .partCreationFinished(.success(part)):
                    state.isLoading = false
                    return .run { send in await send(.delegate(.partCreated(part))) }

                case .alert:
                    return .none

                case .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }
}

// MARK: - Companion Types

public protocol AppellationPart: Equatable, Identifiable, Sendable {
    var name: String { get }
}
