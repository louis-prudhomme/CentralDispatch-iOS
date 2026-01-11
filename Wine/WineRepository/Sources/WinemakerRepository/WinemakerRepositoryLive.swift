import Dependencies
import Foundation
import SharedCommonPersistence
import SwiftData
import WineEntity

public extension WinemakerRepository {
    static func live(
        base: BaseRepository<WinemakerEntity> = .live()
    ) -> WinemakerRepository {
        WinemakerRepository(
            base: base,
            search: { searchText in
                @Dependency(\.modelContainer) var container

                let context = container.mainContext
                let predicate = #Predicate<WinemakerEntity> { $0.name.contains(searchText) }
                let descriptor = FetchDescriptor<WinemakerEntity>(predicate: searchText.isEmpty ? nil : predicate)

                return try context.fetch(descriptor)
            }
        )
    }
}
