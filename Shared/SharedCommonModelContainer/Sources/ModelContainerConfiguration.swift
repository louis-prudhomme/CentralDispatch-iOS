import Dependencies
import Foundation
import SwiftData
import WineEntity

// TODO: although placed SharedCommonModelContainer, this is the Wine app's => have a dynamic implementation per app
public struct ModelContainerConfigurator: Sendable {
    public var initialize: @Sendable () throws -> ModelContainer

    /// All @Model types registered in the app.
    private static let modelTypes: [any PersistentModel.Type] = [
        WineBottleEntity.self,
        WinemakerEntity.self,
        GrapeVarietyEntity.self,
        WineBottlingLocationEntity.self,
        AppellationEntity.self,
        RegionEntity.self,
        VineyardEntity.self,
        CountryEntity.self
    ]

    private static func makeContainer(inMemory: Bool = false) throws -> ModelContainer {
        let schema = Schema(modelTypes)
        let configuration = ModelConfiguration(isStoredInMemoryOnly: inMemory)
        return try ModelContainer(for: schema, configurations: configuration)
    }

    /// Seeds the database with default wine-producing countries if the database is empty
    public static func seedDatabaseIfNeeded(from modelContainer: ModelContainer) throws {
        let context = ModelContext(modelContainer)
        let countryDescriptor = FetchDescriptor<CountryEntity>()
        let existingCountries = try context.fetch(countryDescriptor)

        guard existingCountries.isEmpty else { return }

        for defaultCountry in defaultWineProducingCountries {
            let country = CountryEntity(
                name: defaultCountry.name,
                code: defaultCountry.code
            )
            context.insert(country)
        }

        try context.save()
    }
}

extension ModelContainerConfigurator: DependencyKey {
    public static let liveValue = ModelContainerConfigurator {
        try makeContainer(inMemory: false)
    }

    public static let testValue = ModelContainerConfigurator {
        try makeContainer(inMemory: true)
    }
}

public extension DependencyValues {
    var modelContainerConfigurator: ModelContainerConfigurator {
        get { self[ModelContainerConfigurator.self] }
        set { self[ModelContainerConfigurator.self] = newValue }
    }
}
