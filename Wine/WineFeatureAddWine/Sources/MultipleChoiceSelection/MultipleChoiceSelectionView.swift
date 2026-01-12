import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonDesignSystem
import SwiftUI

struct MultipleChoiceSelectionView<Choice: Choosable, IError: ClientError>: View {
    @Bindable var store: StoreOf<MultipleChoiceSelection<Choice, IError>>

    init(store: StoreOf<MultipleChoiceSelection<Choice, IError>>) {
        self.store = store
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(store.choices) { choice in
                    let isSelected = store.selectedChoices.contains(choice)
                    ChoiceView(choice: choice, isSelected: isSelected, store: store)
                }
            }
            .loadable(isLoading: store.isLoading)
            .emptyable(store.choices, searchText: store.searchText, isLoading: store.isLoading) { emptyCta }
            .searchable(text: $store.searchText)
            .toolbar { toolBarContent }
            .navigationTitle(store.isMultiSelect ? "Select one or more" : "Pick a \(store.title)")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(item: $store.scope(state: \.destination?.addChoice, action: \.destination.addChoice)) { store in
                AddChoiceView(store: store)
            }
            .alert($store.scope(state: \.alert, action: \.alert))
            .onAppear { store.send(.onAppear) }
        }
    }

    var submitButtonLabel: String {
        switch store.selectedChoices.count {
            case 0: "0 selected"
            case 1:
                if case let .some(choice) = store.selectedChoices.first {
                    "Select \(choice)"
                } else {
                    "Select 1"
                }
            default: "Select all \(store.selectedChoices.count)"
        }
    }

    var submitButton: some View {
        CellarButton("Select \(store.selectedChoices.count)", isDisabled: store.isLoading) {
            store.send(.submitSelectedChoicesButtonTapped)
        }
        .disabled(store.selectedChoices.isEmpty)
        .buttonStyle(.borderedProminent)
    }

    @ToolbarContentBuilder
    var toolBarContent: some ToolbarContent {
            ToolbarItem(placement: .primaryAction) {
                Button("Add a \(store.title)", systemImage: "plus") {
                    store.send(.addChoiceButtonTapped)
                }
            }

            if store.isMultiSelect {
                ToolbarItem(placement: .bottomBar) {
                    submitButton
                }
            }
    }

    var emptyCta: some View {
        VStack {
            ContentUnavailableView {
                Label("No results.", systemImage: "magnifyingglass")
            } description: {
                Text("Do you need to create a \(store.title)?")
            } actions: {
                Button("Create \(store.searchText)") {
                    store.send(.createChoiceButtonTapped)
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

private extension MultipleChoiceSelectionView {
    struct ChoiceView: View {
        let choice: Choice
        let isSelected: Bool

        var store: StoreOf<MultipleChoiceSelection<Choice, IError>>

        var body: some View {
            Button {
                store.send(.choiceSelected(choice))
            } label: {
                HStack {
                    Text(displayName)

                    Spacer()

                    if store.isMultiSelect, isSelected {
                        Image(systemName: "checkmark")
                            .accessibilityHidden(true)
                    }
                }
                .accessibilityHint(isSelected ? "Deselect \(displayName)" : "Select \(displayName)")
                .accessibilityAddTraits(isSelected && store.isMultiSelect ? .isSelected : [])
            }
        }

        var displayName: String {
            store.delegate.getDisplayName(choice)
        }
    }
}

#if DEBUG
private struct Example: Choosable {
    let id = "ID"
    let name = "Xavier Frissant"
}

private enum ExampleEmptyError: ClientError {}

#Preview {
    let delegate = MultipleChoiceInteractorDelegate<Example, ExampleEmptyError>(
        fetchChoices: { _ in .success([
            Example()
        ]) },
        createChoice: { _ in .success(Example()) },
        getDisplayName: { $0.name }
    )
    let state = MultipleChoiceSelection.State(
        title: "Winemaker",
        isMultiSelect: false,
        delegate: delegate
    )

    Color.pink.ignoresSafeArea().sheet(isPresented: .constant(true)) {
        NavigationStack {
            MultipleChoiceSelectionView<Example, ExampleEmptyError>(
                store: Store(initialState: state) {
                    MultipleChoiceSelection()
                }
            )
        }
    }
}
#endif
