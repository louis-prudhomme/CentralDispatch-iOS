import Foundation
import SharedCommonDependencies
import WineCommonLocationClientShared

extension LocationClient {
    static let mock = LocationClient(
        search: { _ in
            fatalError("LocationClient.search")
        },
        fetchAllCountries: {
            fatalError("LocationClient.fetchAllCountries")
        }
    )
}

// MARK: - Mock Data for Testing

public extension LocationClient {
    static let mockWithData = LocationClient(
        search: { name in
            let queryParams = GeoNamesQueryParameters.defaultWith(name: name)

            return .success([
                Location(
                    id: 2_988_507,
                    name: queryParams.placename,
                    coordinates: .init(
                        latitude: 48.85341,
                        longitude: 2.3488
                    ),
                    administrativeDivisions: [
                        .init(type: .country, name: "France", code: "FR"),
                        .init(type: .region, name: "Île-de-France", code: "11")
                    ],
                    population: 2_138_551,
                    elevation: nil
                )
            ])
        },
        fetchAllCountries: {
            return .success([
                LocationCountry(
                    id: 3_017_382,
                    name: "France",
                    code: "FR",
                    coordinates: .init(
                        latitude: 46.0,
                        longitude: 2.0
                    )
                ),
                LocationCountry(
                    id: 2_510_769,
                    name: "Spain",
                    code: "ES",
                    coordinates: .init(
                        latitude: 40.0,
                        longitude: -4.0
                    )
                ),
                LocationCountry(
                    id: 3_175_395,
                    name: "Italy",
                    code: "IT",
                    coordinates: .init(
                        latitude: 42.83333,
                        longitude: 12.83333
                    )
                )
            ])
        }
    )

    static let mockWithError = LocationClient(
        search: { _ in
            return .failure(.noResultsFound)
        },
        fetchAllCountries: {
            return .failure(.noResultsFound)
        }
    )
}
