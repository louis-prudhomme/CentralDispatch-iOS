import Dependencies
import Foundation
import SharedCommonPersistence
import SwiftData
import WineEntity

public extension GrapeVarietyRepository {
    static func live(
        base: BaseRepository<GrapeVarietyEntity> = .live()
    ) -> GrapeVarietyRepository {
        GrapeVarietyRepository(
            base: base,
            search: { searchText in
                @Dependency(\.modelContainer) var container

                let context = container.mainContext
                let predicate = #Predicate<GrapeVarietyEntity> { $0.name.contains(searchText) }
                let descriptor = FetchDescriptor<GrapeVarietyEntity>(predicate: searchText.isEmpty ? nil : predicate)

                return try context.fetch(descriptor)
            }
        )
    }
}
