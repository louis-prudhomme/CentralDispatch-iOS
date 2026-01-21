import Foundation
import PhotosUI
import SharedCommonDependencies
import SwiftUI
import UIKit

@MainActor
private func sharedPictureLogic(source: PictureSource, limit: Int) async -> Result<[Data], PictureClientError> {
    await withCheckedContinuation { continuation in
        let coordinator = PicturePickerCoordinator(continuation: continuation, source: source)
        coordinator.retain()

        let rootViewController = UIApplication.shared.connectedScenes
            .compactMap { ($0 as? UIWindowScene)?.keyWindow?.rootViewController }
            .first

        switch source {
            case .camera:
                guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
                    continuation.resume(returning: .failure(.sourceNotAvailable))
                    coordinator.release()
                    return
                }

                let picker = UIImagePickerController()
                picker.sourceType = .camera
                picker.delegate = coordinator
                rootViewController?.present(picker, animated: true)

            case .photoLibrary:
                var configuration = PHPickerConfiguration()
                configuration.filter = .images
                configuration.selectionLimit = limit

                let picker = PHPickerViewController(configuration: configuration)
                picker.delegate = coordinator
                rootViewController?.present(picker, animated: true)
        }
    }
}

extension PictureClient {
    static let live = PictureClient(
        selectPicture: { source in
            let result = await sharedPictureLogic(source: source, limit: 1)

            switch result {
                case let .success(datas):
                    guard let data = datas.first else {
                        return .failure(.invalidData)
                    }

                    return .success(data)

                case let .failure(error):
                    return .failure(error)
            }
        },
        selectMultiplePictures: { source in
            await sharedPictureLogic(source: source, limit: 3)
        }
    )
}

// MARK: - Coordinator

@MainActor
private class PicturePickerCoordinator: NSObject, UIImagePickerControllerDelegate, PHPickerViewControllerDelegate, UINavigationControllerDelegate {
    var continuation: CheckedContinuation<Result<[Data], PictureClientError>, Never>?
    let source: PictureSource
    private static var retainedCoordinators = Set<PicturePickerCoordinator>()

    init(continuation: CheckedContinuation<Result<[Data], PictureClientError>, Never>, source: PictureSource) {
        self.continuation = continuation
        self.source = source
        super.init()
    }

    func retain() {
        Self.retainedCoordinators.insert(self)
    }

    func release() {
        Self.retainedCoordinators.remove(self)
    }

    // MARK: - UIImagePickerControllerDelegate

    nonisolated func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let image = info[.originalImage] as? UIImage
        Task { @MainActor in
            picker.dismiss(animated: true)

            guard let image,
                  let data = image.jpegData(compressionQuality: 0.8)
            else {
                continuation?.resume(returning: .failure(.invalidData))
                release()
                return
            }

            continuation?.resume(returning: .success([data]))
            release()
        }
    }

    nonisolated func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        Task { @MainActor in
            picker.dismiss(animated: true)
            continuation?.resume(returning: .failure(.cancelled))
            release()
        }
    }

    // MARK: - PHPickerViewControllerDelegate

    nonisolated func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        if results.isEmpty {
            Task { @MainActor in
                picker.dismiss(animated: true)
                continuation?.resume(returning: .failure(.cancelled))
                release()
            }
            return
        }

        Task { @MainActor in
            picker.dismiss(animated: true)
        }

        let pictureHolder = PickerResultHolder()
        for result in results {
            loadPicture(from: result.itemProvider, holder: pictureHolder, expectedCount: results.count)
        }
    }

    nonisolated func loadPicture(from itemProvider: NSItemProvider, holder: PickerResultHolder, expectedCount: Int) {
        itemProvider.loadObject(ofClass: UIImage.self) { object, error in
            if let error {
                Task { [weak self] in
                    await holder.append(.failure(.unknown(message: error.localizedDescription)))
                    self?.checkCompletion(holder: holder, expectedCount: expectedCount)
                }
                return
            }

            guard let image = object as? UIImage,
                  let data = image.jpegData(compressionQuality: 0.8)
            else {
                Task { [weak self] in
                    await holder.append(.failure(.invalidData))
                    self?.checkCompletion(holder: holder, expectedCount: expectedCount)
                }
                return
            }

            Task { [weak self] in
                await holder.append(.success(data))
                self?.checkCompletion(holder: holder, expectedCount: expectedCount)
            }
        }
    }

    nonisolated func checkCompletion(holder: PickerResultHolder, expectedCount: Int) {
        Task { @MainActor in
            let results: [Result<Data, PictureClientError>] = await holder.results
            guard results.count == expectedCount else {
                return
            }

            let result: Result<[Data], PictureClientError> = results.reduce(into: .success([])) { partialResult, current in
                switch (partialResult, current) {
                    case (.success(var datas), let .success(data)):
                        datas.append(data)
                        partialResult = .success(datas)

                    case let (.success(_), .failure(error)):
                        partialResult = .failure(error)

                    case (.failure(_), _):
                        break // keep the first error
                }
            }

            continuation?.resume(returning: result)
            self.release()
        }
    }
}

// MARK: - Hashable for Coordinator

extension PicturePickerCoordinator {
    static func == (lhs: PicturePickerCoordinator, rhs: PicturePickerCoordinator) -> Bool {
        ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }

    override nonisolated var hash: Int {
        ObjectIdentifier(self).hashValue
    }
}

// MARK: - Companion types

private actor PickerResultHolder {
    var results = [Result<Data, PictureClientError>]()

    func append(_ result: Result<Data, PictureClientError>) {
        results.append(result)
    }
}
