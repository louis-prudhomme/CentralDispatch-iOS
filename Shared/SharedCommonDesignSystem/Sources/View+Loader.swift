import SwiftUI

private struct LoaderViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay { ProgressView() }
    }
}

public extension View {
    @ViewBuilder
    func loadable(isLoading: Bool) -> some View {
        if isLoading {
            modifier(LoaderViewModifier())
        } else {
            self
        }
    }
}
