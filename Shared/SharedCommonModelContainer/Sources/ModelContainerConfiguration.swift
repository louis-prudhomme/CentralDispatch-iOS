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
        let isSeedingNeeded = try checkIfSeedNeeded(into: context)
        try insertCountriesIfNeeded(if: isSeedingNeeded, into: context)

        let france = try fetchCountryOrThrow(byCode: "FR", in: context)
        try insertFrenchAppellations(if: isSeedingNeeded, using: france, in: context)

        try context.save()
    }
}

// MARK: - Seeding functions

extension ModelContainerConfigurator {
    static func checkIfSeedNeeded(into context: ModelContext) throws -> Bool {
        let countryDescriptor = FetchDescriptor<CountryEntity>()
        let existingCountries = try context.fetch(countryDescriptor)

        return existingCountries.isEmpty
    }

    static func insertCountriesIfNeeded(if isNeeded: Bool, into context: ModelContext) throws {
        guard isNeeded else { return }

        for defaultCountry in defaultWineProducingCountries {
            let country = CountryEntity(
                name: defaultCountry.name,
                code: defaultCountry.code
            )
            context.insert(country)
        }
        try context.save()
    }

    static func fetchCountryOrThrow(byCode code: String, in context: ModelContext) throws -> CountryEntity {
        let predicate = #Predicate<CountryEntity> { $0.code == code }
        let descriptor = FetchDescriptor<CountryEntity>(predicate: predicate)
        guard let france = try context.fetch(descriptor).first else {
            fatalError("Failed to seed default countries: \(code) not found")
        }

        return france
    }

    static func insertFrenchAppellations(if needed: Bool, using france: CountryEntity, in context: ModelContext) throws {
        let entityCache = AppellationEntityCache()

        defaultFrenchGrapeVarieties.forEach { grapeVariety in
            let grapeEntity = GrapeVarietyEntity(fromDefault: grapeVariety)
            entityCache.grapeVarietyCache.set(grapeEntity, forKey: grapeEntity.id)
            context.insert(grapeEntity)
        }

        defaultFrenchWineVineyards.forEach { vineyard in
            let vineyardEntity = VineyardEntity(fromDefault: vineyard, countryEntity: france)
            entityCache.vineyardCache.set(vineyardEntity, forKey: vineyardEntity.id)
            context.insert(vineyardEntity)
        }

        defaultFrenchWineRegions.forEach { region in
            let regionEntity = RegionEntity(
                fromDefault: region,
                countryEntity: france,
                vineyardCache: entityCache.vineyardCache
            )
            entityCache.regionCache.set(regionEntity, forKey: regionEntity.id)
            context.insert(regionEntity)
        }

        defaultFrenchAppellations.forEach { appellation in
            let appellationEntity = AppellationEntity(
                fromDefault: appellation,
                countryEntity: france,
                grapeVarietyCache: entityCache.grapeVarietyCache,
                regionCache: entityCache.regionCache
            )

            context.insert(appellationEntity)
            entityCache.appellationCache.set(appellationEntity, forKey: appellationEntity.id)
        }
    }
}

// MARK: - Dependency

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

// MARK: - Companion types

class Cache<Key: Hashable, Value> {
    private var storage = [Key: Value]()

    func get(forKey key: Key) -> Value? {
        storage[key]
    }

    func set(_ value: Value, forKey key: Key) {
        storage[key] = value
    }

    func has(key: Key) -> Bool {
        storage[key] != nil
    }
}

class AppellationEntityCache {
    var grapeVarietyCache = Cache<UUID, GrapeVarietyEntity>()
    var vineyardCache = Cache<UUID, VineyardEntity>()
    var regionCache = Cache<UUID, RegionEntity>()
    var appellationCache = Cache<UUID, AppellationEntity>()

    init() {}
}

// MARK: - adapter functions to convert between Default types (such as DefaultWineCountry or DefaultGrapeVariety) to Entity types - keeping IDs consistent

// MARK: Specialized initializers

// swiftlint:disable use_dependency_for_date

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
    convenience init(fromDefault defaultAppellation: DefaultWineAppellation, countryEntity _: CountryEntity, grapeVarietyCache: Cache<UUID, GrapeVarietyEntity>, regionCache: Cache<UUID, RegionEntity>) {
        self.init(
            id: defaultAppellation.id,
            name: defaultAppellation.name,
            description: defaultAppellation.description,
            rawWindow: defaultAppellation.rawWindow,
            colors: defaultAppellation.colors.map(\.rawValue),
            // swiftlint:disable:next force_unwrapping
            region: regionCache.get(forKey: defaultAppellation.region.id)!,
            mainGrapeVarieties: defaultAppellation.mainGrapeVarieties.compactMap { grapeVarietyCache.get(forKey: $0.id) },
            createdAt: Date()
        )
    }
}

extension RegionEntity {
    convenience init(fromDefault defaultRegion: DefaultWineRegion, countryEntity _: CountryEntity, vineyardCache: Cache<UUID, VineyardEntity>) {
        self.init(
            id: defaultRegion.id,
            name: defaultRegion.name,
            // swiftlint:disable:next force_unwrapping
            vineyard: vineyardCache.get(forKey: defaultRegion.vineyard.id)!,
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

// swiftlint:enable use_dependency_for_date

// MARK: - Helpers

private extension Collection {
    func unique<T: Hashable>(by discriminator: @escaping (Element) -> T) -> [Element] {
        var set = Set<T>()
        var arrayOrdered = [Element]()
        for value in self {
            // swiftlint:disable:next for_where
            if !set.contains(discriminator(value)) {
                set.insert(discriminator(value))
                arrayOrdered.append(value)
            }
        }

        return arrayOrdered
    }
}
