import Foundation

public func fetchAllCountriesFromAPI(countryBias: [String] = []) async -> Result<[LocationCountryDto], LocationClientErrorDto> {
    let queryParams = GeoNamesQueryParameters(
        placename: "",
        maxRows: 300,
        countryBias: countryBias,
        languageCode: "en",
        responseStyle: .long,
        featureClass: [.A],
        featureCode: [.PCLI]
    )

    return await performGeoNamesRequest(
        queryParameters: queryParams
    ) { data in
        let result = try JSONDecoder().decode(GeoNamesSearchDTO.self, from: data)
        if let status = result.status {
            throw LocationClientErrorDto(with: status)
        }

        guard let geonames = result.geonames else {
            throw LocationClientErrorDto.noData
        }

        return geonames.compactMap(LocationCountryDto.init(from:))
    }
}
