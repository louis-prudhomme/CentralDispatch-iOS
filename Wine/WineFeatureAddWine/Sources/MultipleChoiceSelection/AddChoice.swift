import SharedCommonArchitecture
import SharedCommonDependencies
import SwiftUI

@Reducer
public struct AddChoice<Choice: Choosable, IError: ClientError> {
    @ObservableState
    public struct State: Equatable {
        public let delegate: MultipleChoiceInteractorDelegate<Choice, IError>
        public let title: String
        public let suggested: String?

        @Presents var alert: AlertState<Never>?

        public var choiceName: String
        public var isLoading = false

        public init(title: String, suggested: String?, delegate: MultipleChoiceInteractorDelegate<Choice, IError>) {
            self.title = title
            self.delegate = delegate
            self.suggested = suggested
            choiceName = suggested ?? ""
        }

        public static func == (lhs: AddChoice<Choice, IError>.State, rhs: AddChoice<Choice, IError>.State) -> Bool {
            lhs.title == rhs.title
                && lhs.choiceName == rhs.choiceName
                && lhs.isLoading == rhs.isLoading
                && lhs.suggested == rhs.suggested
        }
    }

    public enum Action: BindableAction {
        case submitChoiceButtonTapped
        case choiceAdditionFinished(Result<Choice, IError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Sendable {
            case choiceAdded(Choice)
        }
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .submitChoiceButtonTapped:
                    state.isLoading = true

                    return .run { [delegate = state.delegate, choiceName = state.choiceName] send in
                        let result = await delegate.createChoice(choiceName)
                        await send(.choiceAdditionFinished(result))
                    }

                case let .choiceAdditionFinished(.failure(error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case let .choiceAdditionFinished(.success(choice)):
                    state.isLoading = false
                    return .run { send in await send(.delegate(.choiceAdded(choice))) }

                case .alert:
                    return .none

                // TODO: when text changes, check if name available
                case .binding:
                    return .none

                case .delegate:
                    return .none
            }
        }
    }
}
