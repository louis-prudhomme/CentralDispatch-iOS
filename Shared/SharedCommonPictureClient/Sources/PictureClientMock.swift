import Foundation
import SharedCommonDependencies
import UIKit

extension PictureClient {
    static let mock = PictureClient(
        selectPicture: { _ in
            fatalError("PictureClient.selectPicture")
        },
        selectMultiplePictures: { _ in
            fatalError("PictureClient.selectPicture")
        }
    )
}

// MARK: - Mock Data for Testing

public extension PictureClient {
    static let mockWithData = PictureClient(
        selectPicture: { _ in
            // Create a simple 1x1 red pixel image for testing
            let size = CGSize(width: 1, height: 1)
            let renderer = UIGraphicsImageRenderer(size: size)
            let image = renderer.image { context in
                UIColor.red.setFill()
                context.fill(CGRect(origin: .zero, size: size))
            }

            guard let data = image.jpegData(compressionQuality: 0.8) else {
                return .failure(.invalidData)
            }

            return .success(data)
        },
        selectMultiplePictures: { _ in
            // Create two simple 1x1 blue and green pixel images for testing
            let size = CGSize(width: 1, height: 1)
            let renderer = UIGraphicsImageRenderer(size: size)

            let blueImage = renderer.image { context in
                UIColor.blue.setFill()
                context.fill(CGRect(origin: .zero, size: size))
            }

            let greenImage = renderer.image { context in
                UIColor.green.setFill()
                context.fill(CGRect(origin: .zero, size: size))
            }

            guard let blueData = blueImage.jpegData(compressionQuality: 0.8),
                  let greenData = greenImage.jpegData(compressionQuality: 0.8)
            else {
                return .failure(.invalidData)
            }

            return .success([blueData, greenData])
        }
    )

    static let mockWithError = PictureClient(
        selectPicture: { _ in
            return .failure(.cancelled)
        },
        selectMultiplePictures: { _ in
            return .failure(.cancelled)
        }
    )
}
