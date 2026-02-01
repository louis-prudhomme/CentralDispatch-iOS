import CodableDependency
import Foundation
import SharedCommonDependencies
import WineDomain
import WineRepository

// MARK: - Entity → Domain

public extension WineBottleEntity {
    func toDomain() throws -> WineBottle {
        guard let decodedLocation = try? bottlingLocation.toDomain() else {
            throw WineInteractorError.badData
        }
        guard let wineColor = WineColor(rawValue: wineColor) else {
            throw WineInteractorError.badData
        }
        guard let sparklingLevel = SparklingLevel(rawValue: sparklingLevel) else {
            throw WineInteractorError.badData
        }

        return try WineBottle(
            id: id,
            name: name,
            millesime: millesime,
            abv: abv,
            pictures: pictures,
            bottlingLocation: decodedLocation,
            grapeVarieties: grapeVarieties.map { try $0.toDomain() },
            winemaker: winemaker?.toDomain(),
            appellation: appellation.toDomain(),
            wineColor: wineColor,
            sparklingLevel: sparklingLevel,
            createdAt: createdAt
        )
    }
}

public extension GrapeVarietyEntity {
    func toDomain() throws -> GrapeVariety {
        guard let grapeColor = GrapeVarietyColor(rawValue: color) else {
            throw WineInteractorError.badData
        }

        return GrapeVariety(
            id: id,
            name: name,
            description: grapeVarietyDescription,
            color: grapeColor,
            synonyms: synonyms,
            createdAt: createdAt
        )
    }
}

public extension WinemakerEntity {
    func toDomain() -> Winemaker {
        Winemaker(
            id: id,
            name: name,
            createdAt: createdAt
        )
    }
}

public extension WineBottlingLocationEntity {
    func toDomain() throws -> WineBottlingLocation {
        @Dependency(\.decode) var decode

        guard let divisions = try? decode([WineBottlingLocation.AdministrativeDivision].self, from: administrativeDivisions) else {
            throw WineInteractorError.badData
        }

        return WineBottlingLocation(
            id: id,
            name: name,
            coordinates: WineBottlingLocation.GeographicalCoordinates(latitude: latitude, longitude: longitude),
            administrativeDivisions: divisions,
            providerId: providerId,
            createdAt: createdAt
        )
    }
}

// MARK: - Domain → Entity

public extension WineBottle {
    func toEntity() throws -> WineBottleEntity {
        guard let encodedLocation = try? bottlingLocation.toEntity() else {
            throw WineInteractorError.badData
        }

        return try WineBottleEntity(
            id: id,
            name: name,
            millesime: millesime,
            abv: abv,
            pictures: pictures,
            bottlingLocation: encodedLocation,
            grapeVarieties: grapeVarieties.map { $0.toEntity() },
            createdAt: createdAt,
            winemaker: winemaker?.toEntity(),
            appellation: appellation.toEntity(),
            wineColor: wineColor.rawValue,
            sparklingLevel: sparklingLevel.rawValue
        )
    }
}

public extension Winemaker {
    func toEntity() -> WinemakerEntity {
        WinemakerEntity(
            id: id,
            name: name,
            createdAt: createdAt
        )
    }
}

public extension GrapeVariety {
    func toEntity() -> GrapeVarietyEntity {
        GrapeVarietyEntity(
            id: id,
            name: name,
            description: description,
            color: color.rawValue,
            synonyms: synonyms,
            createdAt: createdAt
        )
    }
}

public extension WineBottlingLocation {
    func toEntity() throws -> WineBottlingLocationEntity {
        @Dependency(\.encode) var encode

        guard let encodedDivisions = try? encode(administrativeDivisions) else {
            throw WineInteractorError.badData
        }

        return WineBottlingLocationEntity(
            id: id,
            name: name,
            latitude: coordinates.latitude,
            longitude: coordinates.longitude,
            countryCode: countryCode ?? "",
            regionCode: regionCode,
            administrativeDivisions: encodedDivisions,
            providerId: providerId,
            createdAt: createdAt
        )
    }
}

// MARK: - Codable conformances

extension WineBottlingLocation.AdministrativeDivision: @retroactive Codable {
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(DivisionType.self, forKey: .type)
        let name = try container.decode(String.self, forKey: .name)
        let code = try container.decode(String.self, forKey: .code)
        self.init(type: type, name: name, code: code)
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(name, forKey: .name)
        try container.encode(code, forKey: .code)
    }

    enum CodingKeys: CodingKey {
        case type
        case name
        case code
    }
}

extension WineBottlingLocation.AdministrativeDivision.DivisionType: @retroactive Codable {
    public init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        switch rawValue {
            case "country": self = .country
            case "region": self = .region
            default:
                if rawValue.starts(with: "countyOrSmaller_"),
                   let importanceString = rawValue.split(separator: "_").last,
                   let importance = Int(importanceString)
                {
                    self = .countyOrSmaller(importance)
                } else {
                    throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid DivisionType value: \(rawValue)")
                }
        }
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        let rawValue = switch self {
            case .country: "country"
            case .region: "region"
            case let .countyOrSmaller(importance): "countyOrSmaller_\(importance)"
        }
        try container.encode(rawValue)
    }
}

// MARK: - Appellation, Region, Vineyard conversions

public extension AppellationEntity {
    func toDomain() throws -> Appellation {
        guard let region else {
            throw WineInteractorError.badData
        }

        let domainColors = colors.compactMap(WineColor.init(rawValue:))
        guard domainColors.count == colors.count else {
            throw WineInteractorError.badData
        }

        return try Appellation(
            id: id,
            name: name,
            description: appellationDescription,
            colors: domainColors,
            mainGrapeVarieties: (mainGrapeVarieties ?? []).map { try $0.toDomain() },
            rawWindow: rawWindow,
            region: region.toDomain(),
            createdAt: createdAt
        )
    }
}

public extension Appellation {
    func toEntity() throws -> AppellationEntity {
        try AppellationEntity(
            id: id,
            name: name,
            description: description,
            rawWindow: rawWindow,
            colors: colors.map { $0.rawValue },
            region: region.toEntity(),
            mainGrapeVarieties: mainGrapeVarieties.map { $0.toEntity() },
            createdAt: createdAt
        )
    }
}

public extension RegionEntity {
    func toDomain() throws -> Region {
        guard let vineyard else {
            throw WineInteractorError.badData
        }

        return try Region(
            id: id,
            name: name,
            vineyard: vineyard.toDomain(),
            createdAt: createdAt
        )
    }
}

public extension Region {
    func toEntity() throws -> RegionEntity {
        try RegionEntity(
            id: id,
            name: name,
            vineyard: vineyard.toEntity(),
            createdAt: createdAt
        )
    }
}

public extension VineyardEntity {
    func toDomain() throws -> Vineyard {
        guard let country else {
            throw WineInteractorError.badData
        }

        return Vineyard(
            id: id,
            name: name,
            description: vineyardDescription,
            soilAndClimate: soilAndClimate,
            history: history,
            country: country.toDomain(),
            createdAt: createdAt
        )
    }
}

public extension Vineyard {
    func toEntity() throws -> VineyardEntity {
        VineyardEntity(
            id: id,
            name: name,
            description: description,
            soilAndClimate: soilAndClimate,
            history: history,
            country: country.toEntity(),
            createdAt: createdAt
        )
    }
}

public extension CountryEntity {
    func toDomain() -> Country {
        Country(
            id: id,
            name: name,
            code: code,
            createdAt: createdAt
        )
    }
}

public extension Country {
    func toEntity() -> CountryEntity {
        CountryEntity(
            id: id,
            name: name,
            code: code,
            createdAt: createdAt
        )
    }
}
