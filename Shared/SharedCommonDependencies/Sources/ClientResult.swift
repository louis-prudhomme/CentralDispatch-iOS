import Foundation

public protocol ClientSuccess: Equatable {}
public protocol ClientError: Error, LocalizedError, Equatable {}
public typealias ClientResult<TSuccess: ClientSuccess, TError: ClientError> = Result<TSuccess, TError>
