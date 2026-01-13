import Foundation
import SharedCommonDependencies
import WineCommonLocationClientShared

public enum LocationClientError: ClientError {
    case authorizationException
    case invalidParameter
    case noResultsFound
    case dailyCreditLimitExceeded
    case hourlyCreditLimitExceeded
    case weeklyCreditLimitExceeded
    case invalidInput
    case serverOverload
    case serviceNotImplemented
    case networkError
    case encodingError
    case decodingError
    case noData
    case invalidURL
    case unknown(message: String)
    case other(reason: String)

    public init(_ error: any Error) {
        self = .other(reason: error.localizedDescription)
    }

    public init(with status: GeoNamesStatusDto) {
        self = Self.from(status: status)
    }

    public init(from other: LocationClientErrorDto) {
        switch other {
            case .authorizationException: self = .authorizationException
            case .invalidParameter: self = .invalidParameter
            case .noResultsFound: self = .noResultsFound
            case .dailyCreditLimitExceeded: self = .dailyCreditLimitExceeded
            case .hourlyCreditLimitExceeded: self = .hourlyCreditLimitExceeded
            case .weeklyCreditLimitExceeded: self = .weeklyCreditLimitExceeded
            case .invalidInput: self = .invalidInput
            case .serverOverload: self = .serverOverload
            case .serviceNotImplemented: self = .serviceNotImplemented
            case .networkError: self = .networkError
            case .encodingError: self = .encodingError
            case .decodingError: self = .decodingError
            case .noData: self = .noData
            case .invalidURL: self = .invalidURL
            case let .unknown(message): self = .unknown(message: message)
            case let .other(reason): self = .other(reason: reason)
        }
    }

    public var errorDescription: String? {
        return localizedDescription
    }

    var localizedDescription: String {
        switch self {
            case .authorizationException: "Authorization exception - check your GeoNames username."
            case .invalidParameter: "Invalid parameter provided to the API."
            case .noResultsFound: "No results found for the given query."
            case .dailyCreditLimitExceeded: "Daily API credit limit exceeded."
            case .hourlyCreditLimitExceeded: "Hourly API credit limit exceeded."
            case .weeklyCreditLimitExceeded: "Weekly API credit limit exceeded."
            case .invalidInput: "Invalid input provided."
            case .serverOverload: "Server is currently overloaded."
            case .serviceNotImplemented: "Service not implemented."
            case .networkError: "Network connection error."
            case .encodingError: "Failed to encode request."
            case .decodingError: "Failed to decode response."
            case .noData: "No data returned from the API."
            case .invalidURL: "Invalid URL format."
            case .unknown: "An unknown error occurred."
            case let .other(reason): reason
        }
    }

    static func from(status: GeoNamesStatusDto) -> LocationClientError {
        switch status.value {
            case 10: .authorizationException
            case 14: .invalidParameter
            case 15: .noResultsFound
            case 18: .dailyCreditLimitExceeded
            case 19: .hourlyCreditLimitExceeded
            case 20: .weeklyCreditLimitExceeded
            case 21: .invalidInput
            case 22: .serverOverload
            case 23: .serviceNotImplemented
            default: .unknown(message: status.message)
        }
    }
}
