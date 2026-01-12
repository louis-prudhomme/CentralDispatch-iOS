import SharedCommonArchitecture
import SharedCommonDependencies
import SharedCommonDesignSystem
import SwiftUI

struct AddAppellationPartView<Part: AppellationPart, IError: ClientError>: View {
    @Bindable var store: StoreOf<AddAppellationPart<Part, IError>>

    init(store: StoreOf<AddAppellationPart<Part, IError>>) {
        self.store = store
    }

    var body: some View {
        Form {
            if !store.hierarchy.isEmpty {
                HierarchyDisplaySection(hierarchy: store.hierarchy)
            }

            HStack(spacing: 16) {
                Text("Name")

                TextField("Enter name", text: $store.partName)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.trailing)
            }
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                CellarButton("Create \(store.partName)", systemImage: "plus", isLoading: store.isLoading) {
                    store.send(.submitPartButtonTapped)
                }
                .buttonStyle(.borderedProminent)
                .disabled(store.partName.isEmpty)
            }
        }
        .alert($store.scope(state: \.alert, action: \.alert))
        .navigationTitle("Create \(store.partType)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Reusable Components

private struct HierarchyDisplaySection: View {
    let hierarchy: [Hierarchy]

    var body: some View {
        ForEach(hierarchy) { item in
            Section {
                HStack {
                    Text("\(item.label):")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text(item.value)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

#if DEBUG
import Dependencies

private struct ExamplePart: AppellationPart {
    let id: UUID
    let name = "Bordeaux"

    init() {
        @Dependency(\.uuid) var uuid
        id = uuid()
    }
}

private enum ExampleError: ClientError {
    case failed

    var localizedDescription: String {
        "Something went wrong"
    }
}

#Preview {
    let createHandler: AddAppellationPart<ExamplePart, ExampleError>.CreatePartHandler = { _ in
        .success(ExamplePart())
    }

    let state = AddAppellationPart<ExamplePart, ExampleError>.State(
        partType: "Region",
        createPartHandler: createHandler
    )

    Color.pink.ignoresSafeArea().sheet(isPresented: .constant(true)) {
        NavigationStack {
            AddAppellationPartView<ExamplePart, ExampleError>(
                store: Store(initialState: state) {
                    AddAppellationPart<ExamplePart, ExampleError>()
                }
            )
        }
    }
}
#endif
