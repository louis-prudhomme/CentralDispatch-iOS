import Foundation

public struct LocationCountryDto: Identifiable, Equatable, Sendable {
    public let id: Int
    public let name: String
    public let code: String
    public let coordinates: GeographicalCoordinatesDto

    public struct GeographicalCoordinatesDto: Equatable, Sendable {
        public let latitude: Double
        public let longitude: Double

        public init(latitude: Double, longitude: Double) {
            self.latitude = latitude
            self.longitude = longitude
        }
    }

    public init(id: Int, name: String, code: String, coordinates: GeographicalCoordinatesDto) {
        self.id = id
        self.name = name
        self.code = code
        self.coordinates = coordinates
    }
}

public extension LocationCountryDto {
    init?(from dto: GeoNameDTO) {
        guard let countryCode = dto.countryCode else { return nil }

        id = dto.geonameId
        name = dto.name
        code = countryCode

        coordinates = GeographicalCoordinatesDto(
            latitude: Double(dto.lat) ?? 0.0,
            longitude: Double(dto.lng) ?? 0.0
        )
    }
}
