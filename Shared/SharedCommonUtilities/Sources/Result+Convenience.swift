import Foundation

public extension Result {
    var isSuccess: Bool {
        switch self {
            case .success: true
            case .failure: false
        }
    }

    var isFailure: Bool {
        !isSuccess
    }
}
