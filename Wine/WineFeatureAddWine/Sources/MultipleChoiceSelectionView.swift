import SwiftUI
import SharedCommonArchitecture
import SharedCommonInteractor

struct MultipleChoiceSelectionView<Choice: Choosable, IError: InteractorError>: View {
    @Bindable public var store: StoreOf<MultipleChoiceSelection<Choice, IError>>

    public init(store: StoreOf<MultipleChoiceSelection<Choice, IError>>) {
        self.store = store
    }

    public var body: some View {
        NavigationStack {
            VStack {
                if store.isLoading {
                    ProgressView()
                } else {
                    List {
                        ForEach(store.choices) { choice in
                            Button {
                                store.send(.choiceSelected(choice))
                            } label: {
                                Text(getDisplayName(for: choice))
                            }
                        }
                    }
                    .searchable(text: $store.searchText)
                }
            }
            .navigationTitle(store.title)
            .navigationBarTitleDisplayMode(.inline)
            .task { store.send(.onAppear) }
            .alert($store.scope(state: \.alert, action: \.alert))
        }

    }

    func getDisplayName(for choice: Choice) -> String {
        store.delegate.getDisplayName(choice)
    }
}

#if DEBUG
struct Example: Choosable {
    let id = "ID"
    let name = "Xavier Frissant"
}
enum ExampleEmptyError: InteractorError {}

#Preview {
    let delegate = MultipleChoiceInteractorDelegate<Example, ExampleEmptyError>(
        fetchChoices: { _ in .success([
            Example()
        ]) },
        getDisplayName: { $0.name }
    )
    let state = MultipleChoiceSelection.State(
        title: "Select Winemaker",
        delegate: delegate
    )

    Color.pink.ignoresSafeArea().sheet(isPresented: .constant(true)) {
        MultipleChoiceSelectionView<Example, ExampleEmptyError>(
            store: Store(initialState: state) {
                MultipleChoiceSelection()
            }
        )
    }
}
#endif

