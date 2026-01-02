import Foundation

// MARK: - Protocols

public protocol ClientSuccess: Equatable, Sendable {}
public protocol ClientError: Error, LocalizedError, Equatable {}
public typealias ClientResult<TSuccess: ClientSuccess, TError: ClientError> = Result<TSuccess, TError>

// MARK: - Helpers

public func withResult<TSuccess: Equatable, TError: ClientError>(parser: (any Error) -> TError, _ operation: @escaping @Sendable () async throws -> TSuccess) async -> Result<TSuccess, TError> {
    do {
        let result = try await operation()
        return .success(result)
    } catch {
        return .failure(parser(error))
    }
}

public func withResult<TError: ClientError>(parser: (any Error) -> TError, _ operation: @escaping @Sendable () async throws -> Void) async -> VoidResult<TError> {
    do {
        try await operation()
        return .success
    } catch {
        return .failure(parser(error))
    }
}
