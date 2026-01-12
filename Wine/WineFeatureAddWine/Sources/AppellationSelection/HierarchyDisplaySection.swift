import SwiftUI

struct HierarchyDisplaySection: View {
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
