import SharedCommonArchitecture
import SharedCommonInteractor
import SwiftUI

@Reducer
public struct MultipleChoiceSelection<Choice: Choosable, IError: InteractorError> {
    @ObservableState
    public struct State: Equatable {
        
        public let delegate: MultipleChoiceInteractorDelegate<Choice, IError>
        public let title: String

        @Presents var alert: AlertState<Never>?

        public var searchText: String = ""
        public var choices: [Choice] = []
        public var isLoading: Bool = false

        public init(title: String, delegate: MultipleChoiceInteractorDelegate<Choice, IError>) {
            self.title = title
            self.delegate = delegate
        }

        public static func == (lhs: MultipleChoiceSelection<Choice, IError>.State, rhs: MultipleChoiceSelection<Choice, IError>.State) -> Bool {
            lhs.title == rhs.title
            && lhs.searchText == rhs.searchText
            && lhs.choices == rhs.choices
            && lhs.isLoading == rhs.isLoading
        }
    }

    public enum Action: BindableAction, Equatable {
        case onAppear
        case choiceSelected(Choice)
        case searchTextChanged(String)
        case choicesLoaded(Result<[Choice], IError>)

        case alert(PresentationAction<Never>)
        case binding(BindingAction<State>)
        case delegate(Delegate)

        public enum Delegate: Equatable {
            case choiceSelected(Choice)
        }
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()

        Reduce { state, action in
            switch action {
                case .onAppear:
                    state.isLoading = true
                    state.choices = []
                    return .run { [delegate = state.delegate, searchText = state.searchText] send in
                        await send(.choicesLoaded(await delegate.fetchChoices(searchText)))
                    }

                case .choicesLoaded(.success(let choices)):
                    state.choices = choices
                    state.isLoading = false
                    return .none

                case .choicesLoaded(.failure(let error)):
                    state.isLoading = false
                    state.alert = AlertState {
                        TextState(error.localizedDescription)
                    }
                    return .none

                case .searchTextChanged(let text):
                    state.searchText = text
                    return .none

                case .choiceSelected(let choice):
                    return .send(.delegate(.choiceSelected(choice)))

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

public protocol Choosable: Equatable, Identifiable, Sendable {}

public struct MultipleChoiceInteractorDelegate<Choice: Choosable, IError: InteractorError>: Sendable {
    let fetchChoices: @Sendable (String) async -> Result<[Choice], IError>
    let getDisplayName: @Sendable (Choice) -> String
}
