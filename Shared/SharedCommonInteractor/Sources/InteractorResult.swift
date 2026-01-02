import Foundation
import SharedCommonDependencies

public func withInteractorResult<TSuccess, TError: InteractorError>(parser: (any Error) -> TError, _ operation: @escaping @Sendable () async throws -> TSuccess) async -> InteractorResult<TSuccess, TError> where TSuccess: Equatable {
    do {
        let result = try await operation()
        return .success(result)
    } catch {
        return .failure(parser(error))
    }
}

public func withInteractorResult<TError: InteractorError>(parser: (any Error) -> TError, _ operation: @escaping @Sendable () async throws -> Void) async -> VoidResult<TError> {
    do {
        try await operation()
        return .success
    } catch {
        return .failure(parser(error))
    }
}

public typealias InteractorResult = ClientResult

public typealias InteractorError = ClientError
