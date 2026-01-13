import Foundation
import SharedCommonPersistence
import SwiftData

// Warning: Add every new entity in the schema declaration in SharedCommonModelContainer

@Model
public final class CountryEntity: IdentifiableEntity {
    @Attribute(.unique) public var id: UUID
    @Attribute public var name: String
    @Attribute public var code: String
    @Attribute public var createdAt: Date

    @Relationship(deleteRule: .cascade, inverse: \VineyardEntity.country) public var vineyards: [VineyardEntity]?

    public init(id: UUID, name: String, code: String, createdAt: Date) {
        self.id = id
        self.name = name
        self.code = code
        self.createdAt = createdAt
    }

    public static func idPredicate(for id: UUID) -> Predicate<CountryEntity> {
        #Predicate<CountryEntity> { $0.id == id }
    }
}

public extension CountryEntity {
    func update(from entity: CountryEntity) {
        // id is immutable, no update needed
        name = entity.name
        code = entity.code
        createdAt = entity.createdAt
    }
}

// MARK: Seed extension

public extension CountryEntity {
    convenience init(name: String, code: String) {
        // swiftlint:disable:next use_dependency_for_uuid use_dependency_for_date
        self.init(id: UUID(), name: name, code: code, createdAt: Date())
    }
}
