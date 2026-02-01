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
        let frenchPredicate = #Predicate<CountryEntity> { $0.code == "FR" }
        guard let france = context.fetch(frenchPredicate).first else {
            fatalError("Failed to seed default countries: France not found")
        }

        for frenchAppellation in defaultFrenchAppellations {
            let appellationEntity = AppellationEntity(
                fromDefault: frenchAppellation,
                countryEntity: france
            )

            appellationEntity.region.vineyard.country = france
            context.insert(appellationEntity.region.vineyard.country)
            context.insert(appellationEntity.region.vineyard)
            context.insert(appellationEntity.region)
            context.insert(appellationEntity)
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

// MARK: - adapter functions to convert between Default types (such as DefaultWineCountry or DefaultGrapeVariety) to Entity types - keeping IDs consistent

// MARK: Specialized initializers

// swiftlint:disable use_dependency_for_uuid use_dependency_for_date

extension GrapeVarietyEntity {
    convenience init(fromDefault defaultGrapeVariety: DefaultGrapeVariety) {
        self.init(
            id: defaultGrapeVariety.id,
            name: defaultGrapeVariety.name,
            description: defaultGrapeVariety.description,
            color: defaultGrapeVariety.color.rawValue,
            synonyms: defaultGrapeVariety.synonyms,
            createdAt: Date()
        )
    }
}

extension AppellationEntity {
    convenience init(fromDefault defaultAppellation: DefaultWineAppellation, countryEntity: CountryEntity) {
        self.init(
            id: defaultAppellation.id,
            name: defaultAppellation.name,
            description: defaultAppellation.description,
            rawWindow: defaultAppellation.rawWindow,
            colors: defaultAppellation.colors.map(\.rawValue),
            region: RegionEntity(fromDefault: defaultAppellation.region, countryEntity: countryEntity),
            mainGrapeVarieties: defaultAppellation.mainGrapeVarieties.map { GrapeVarietyEntity(fromDefault: $0) },
            createdAt: Date()
        )
    }
}

extension RegionEntity {
    convenience init(fromDefault defaultRegion: DefaultWineRegion, countryEntity: CountryEntity) {
        self.init(
            id: defaultRegion.id,
            name: defaultRegion.name,
            vineyard: VineyardEntity(fromDefault: defaultRegion.vineyard,
                                     countryEntity: countryEntity),
            createdAt: Date()
        )
    }
}

extension VineyardEntity {
    convenience init(fromDefault defaultVineyard: DefaultWineVineyard, countryEntity: CountryEntity) {
        self.init(
            id: defaultVineyard.id,
            name: defaultVineyard.name,
            description: defaultVineyard.description,
            soilAndClimate: defaultVineyard.soilAndClimate,
            history: defaultVineyard.history,
            country: countryEntity,
            createdAt: Date()
        )
    }
}

// MARK:

// swiftlint:enable use_dependency_for_uuid use_dependency_for_date
