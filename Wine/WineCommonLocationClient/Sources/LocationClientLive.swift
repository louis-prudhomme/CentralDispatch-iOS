import Foundation
import SharedCommonDependencies
import URLQueryItemCoder

@MainActor private var _countries: [LocationCountry]?

extension LocationClient {
    static let live = LocationClient(
        search: { name in
            let queryParams = GeoNamesQueryParameters.defaultWith(name: name)

            return await performGeoNamesRequest(
                queryParameters: queryParams
            ) { data in
                let result = try JSONDecoder().decode(GeoNamesSearchDTO.self, from: data)
                if let status = result.status {
                    throw LocationClientError(from: status)
                }

                guard let geonames = result.geonames else {
                    throw LocationClientError.noData
                }

                return geonames.map(Location.init(from:))
            }
        },
        fetchAllCountries: {
            if let countries = await MainActor.run(body: { _countries }) {
                return .success(countries)
            }

            let result = await fetchAllCountriesFromAPI()

            if case let .success(countries) = result {
                await MainActor.run { _countries = countries }
            }
            return result
        }
    )
}
