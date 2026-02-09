import SwiftUI

public struct SimpleToggleStyle: ToggleStyle {
    public func makeBody(configuration: Configuration) -> some View {
        Button(action: { configuration.isOn.toggle() }) {
            Image(systemName: configuration.isOn ? "circle.fill" : "circle")
                .foregroundStyle(.tint.opacity(configuration.isOn ? 1 : 0))
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 2))
                        .foregroundStyle(.secondary)
                }
                .padding(8)
        }
        .buttonStyle(.plain)
        .accessibilityRepresentation {
            Toggle(configuration)
        }
    }
}

public extension ToggleStyle where Self == SimpleToggleStyle {
    static var simple: some ToggleStyle {
        SimpleToggleStyle()
    }
}
