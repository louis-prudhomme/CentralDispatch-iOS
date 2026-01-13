import Foundation
import URLQueryItemCoder

// MARK: - API Configuration

private let geoNamesBaseURL = "https://secure.geonames.org/searchJSON"
private let username = "LouisPH2" // TODO: extract to config

// MARK: - Network Helper

internal func performGeoNamesRequest<T>(
    queryParameters: GeoNamesQueryParameters,
    decoder: @escaping (Data) throws -> T
) async -> Result<T, LocationClientError> {
    guard var urlComponents = URLComponents(string: geoNamesBaseURL) else {
        return .failure(.invalidURL)
    }

    let encoder = URLQueryItemEncoder(unkeyedContainerStrategy: .repeated)
    guard var queryItems = try? encoder.encode(queryParameters) else {
        return .failure(.encodingError)
    }

    queryItems.append(URLQueryItem(name: "username", value: username))

    urlComponents.queryItems = queryItems

    guard let url = urlComponents.url else {
        return .failure(.invalidURL)
    }

    do {
        let (data, response) = try await URLSession.shared.data(from: url) // TODO: inject urlSession

        guard let httpResponse = response as? HTTPURLResponse else {
            return .failure(.networkError)
        }
        guard 200 ... 299 ~= httpResponse.statusCode else {
            return .failure(.networkError)
        }

        let result = try decoder(data)
        return .success(result)

    } catch is DecodingError {
        return .failure(.decodingError)
    } catch {
        return .failure(.networkError)
    }
}
