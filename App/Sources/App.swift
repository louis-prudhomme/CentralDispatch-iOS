import Dependencies
import SharedCommonArchitecture
import SharedCommonModelContainer
import SwiftUI

@main
struct CellarDoorApp: App {
    @State private var initializationError: (any Error)?

    init() {
        do {
            // TODO: proper init
            let isRunningTests = ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] != nil
            let modelContainer = isRunningTests
                ? try ModelContainerConfiguration.initializeForTesting()
                : try ModelContainerConfiguration.initialize()
            prepareDependencies {
                $0.modelContainer = modelContainer
            }
        } catch {
            // Don't use fatalError as it crashes before test runner can bootstrap
            print("❌ Failed to initialize ModelContainer: \(error)")
            print("Error details: \(String(describing: error))")
            _initializationError = State(initialValue: error)
        }
    }

    var body: some Scene {
        WindowGroup {
            if let error = initializationError {
                ErrorView(error: error)
            } else {
                AppCoordinatorView(
                    store: Store(initialState: AppCoordinator.State()) {
                        AppCoordinator()
                    }
                )
            }
        }
    }
}

private struct ErrorView: View {
    let error: any Error

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "exclamationmark.triangle.fill")
                .font(.system(size: 60))
                .foregroundColor(.red)
                .accessibilityHidden(true)
            
            Text("Initialization Error")
                .font(.title)
                .fontWeight(.bold)
            
            Text(String(describing: error))
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Please check the console logs for more details.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
