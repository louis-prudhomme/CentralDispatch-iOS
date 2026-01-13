import Foundation
import SharedCommonDependencies
import URLQueryItemCoder
import WineCommonLocationClientShared

// TODO: real cache mechanism
@MainActor private var _countries: [LocationCountry]?

let _search: @Sendable (String) async -> Result<[Location], LocationClientError> = { name in
    let queryParams = GeoNamesQueryParameters.defaultWith(name: name)

    return await performGeoNamesRequest(
        queryParameters: queryParams
    ) { data in
        let result = try JSONDecoder().decode(GeoNamesSearchDTO.self, from: data)
        if let status = result.status {
            throw LocationClientError(with: status)
        }

        guard let geonames = result.geonames else {
            throw LocationClientError.noData
        }

        return geonames
            .map(Location.init(from:))
    }
    .mapError(LocationClientError.init(from:))
}

let _fetchAllCountries: @Sendable () async -> Result<[LocationCountry], LocationClientError> = {
    if let countries = await MainActor.run(body: { _countries }) {
        return .success(countries)
    }

    let dtoResult = await fetchAllCountriesFromAPI()
    let result = dtoResult
        .map { $0.map(LocationCountry.init(from:)) }
        .mapError(LocationClientError.init(from:))

    if case let .success(countries) = result {
        await MainActor.run { _countries = countries }
    }
    return result
}

extension LocationClient {
    static let live = LocationClient(
        search: _search,
        fetchAllCountries: _fetchAllCountries
    )
}
