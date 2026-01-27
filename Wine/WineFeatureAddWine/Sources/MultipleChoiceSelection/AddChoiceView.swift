import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonDesignSystem
import SwiftUI

struct AddChoiceView<Choice: Choosable, IError: ClientError>: View {
    @Bindable var store: StoreOf<AddChoice<Choice, IError>>

    var body: some View {
        Form {
            HStack(spacing: 16) {
                Text("Name")

                TextField("Enter name", text: $store.choiceName)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.trailing)
            }
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                CellarButton("Create \(store.choiceName)", systemImage: "plus", isLoading: store.isLoading) {
                    store.send(.submitChoiceButtonTapped)
                }
                .buttonStyle(.borderedProminent)
                .disabled(store.choiceName.isEmpty)
            }
        }
        .alert($store.scope(state: \.alert, action: \.alert))
        .navigationTitle("Create \(store.title)")
        .navigationBarTitleDisplayMode(.inline)
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
        fetchChoices: { _ in .success([]) },
        createChoice: { _ in .success(Example()) },
        getDisplayName: { $0.name }
    )
    let state = AddChoice.State(
        title: "Winemaker",
        suggested: nil,
        delegate: delegate
    )

    Color.pink.ignoresSafeArea().sheet(isPresented: .constant(true)) {
        NavigationStack {
            AddChoiceView<Example, ExampleEmptyError>(
                store: Store(initialState: state) {
                    AddChoice<Example, ExampleEmptyError>()
                }
            )
        }
    }
}
#endif
