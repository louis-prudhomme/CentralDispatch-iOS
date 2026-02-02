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
        let descriptor = FetchDescriptor(predicate: frenchPredicate)
        guard let france = try context.fetch(descriptor).first else {
            fatalError("Failed to seed default countries: France not found")
        }

        // Create shared pools to avoid duplicate entities
        var grapeVarietyCache = [UUID: GrapeVarietyEntity]()
        var vineyardCache = [UUID: VineyardEntity]()
        var regionCache = [UUID: RegionEntity]()

        let allGrapeVarieties = defaultFrenchAppellations.flatMap(\.mainGrapeVarieties)
        for defaultGrapeVariety in allGrapeVarieties {
            let grapeEntity = GrapeVarietyEntity(fromDefault: defaultGrapeVariety)
            grapeVarietyCache[grapeEntity.id] = grapeEntity
            context.insert(grapeEntity)
        }

        let allVineyards = defaultFrenchAppellations.map(\.region.vineyard)
        for defaultVineyard in allVineyards {
            let vineyardEntity = VineyardEntity(fromDefault: defaultVineyard, countryEntity: france)
            vineyardCache[vineyardEntity.id] = vineyardEntity
            context.insert(vineyardEntity)
        }

        let allRegions = defaultFrenchAppellations.map(\.region)
        for defaultRegion in allRegions {
            let regionEntity = RegionEntity(
                fromDefault: defaultRegion,
                countryEntity: france,
                vineyardCache: vineyardCache
            )
            regionCache[regionEntity.id] = regionEntity
            context.insert(regionEntity)
        }

        for frenchAppellation in defaultFrenchAppellations {
            let appellationEntity = AppellationEntity(
                fromDefault: frenchAppellation,
                countryEntity: france,
                grapeVarietyCache: grapeVarietyCache,
                regionCache: regionCache
            )

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
    convenience init(fromDefault defaultAppellation: DefaultWineAppellation, countryEntity _: CountryEntity, grapeVarietyCache: [UUID: GrapeVarietyEntity], regionCache: [UUID: RegionEntity]) {
        self.init(
            id: defaultAppellation.id,
            name: defaultAppellation.name,
            description: defaultAppellation.description,
            rawWindow: defaultAppellation.rawWindow,
            colors: defaultAppellation.colors.map(\.rawValue),
            region: regionCache[defaultAppellation.region.id]!,
            mainGrapeVarieties: defaultAppellation.mainGrapeVarieties.compactMap { grapeVarietyCache[$0.id] },
            createdAt: Date()
        )
    }
}

extension RegionEntity {
    convenience init(fromDefault defaultRegion: DefaultWineRegion, countryEntity _: CountryEntity, vineyardCache: [UUID: VineyardEntity]) {
        self.init(
            id: defaultRegion.id,
            name: defaultRegion.name,
            vineyard: vineyardCache[defaultRegion.vineyard.id]!,
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

// swiftlint:enable use_dependency_for_uuid use_dependency_for_date
