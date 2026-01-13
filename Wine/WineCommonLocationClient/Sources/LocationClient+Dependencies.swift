import Foundation
import SharedCommonDependencies
import WineCommonLocationClientShared

public struct LocationClient: Sendable {
    public var search: @Sendable (String) async -> Result<[Location], LocationClientError>
    public var fetchAllCountries: @Sendable () async -> Result<[LocationCountry], LocationClientError>

    public init(
        search: @escaping @Sendable (String) async -> Result<[Location], LocationClientError>,
        fetchAllCountries: @escaping @Sendable () async -> Result<[LocationCountry], LocationClientError>
    ) {
        self.search = search
        self.fetchAllCountries = fetchAllCountries
    }
}

// MARK: - Dependency Registration

extension LocationClient: DependencyKey {
    public static let liveValue = LocationClient.live
    public static let testValue = LocationClient.mock
    public static let previewValue = LocationClient.mock
}

public extension DependencyValues {
    var locationClient: LocationClient {
        get { self[LocationClient.self] }
        set { self[LocationClient.self] = newValue }
    }
}
