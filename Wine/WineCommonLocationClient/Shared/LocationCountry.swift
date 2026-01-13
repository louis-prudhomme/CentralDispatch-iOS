import Foundation

public struct LocationCountry: Identifiable, Equatable, Sendable {
    public let id: Int
    public let name: String
    public let code: String
    public let coordinates: GeographicalCoordinates

    public struct GeographicalCoordinates: Equatable, Sendable {
        public let latitude: Double
        public let longitude: Double
    }
}

extension LocationCountry {
    init?(from dto: GeoNameDTO) {
        guard let countryCode = dto.countryCode else { return nil }

        self.id = dto.geonameId
        self.name = dto.name
        self.code = countryCode

        self.coordinates = GeographicalCoordinates(
            latitude: Double(dto.lat) ?? 0.0,
            longitude: Double(dto.lng) ?? 0.0
        )
    }
}
