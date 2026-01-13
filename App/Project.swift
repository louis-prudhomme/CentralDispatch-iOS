import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.multiTargetApp(
    projectName: "CentralDispatch",
    targets: [
        AppTargetConfig(
            name: "CellarDoor",
            compilerFlag: "WINE",
            infoPlistExtensions: [
                "CFBundleDisplayName": "Cellar Door",
                "NSCameraUsageDescription": "This app requires access to your camera to take photos of your wine bottles.",
                "NSPhotoLibraryUsageDescription": "This app requires access to your photo library to select and upload images of your wine bottles."
            ],
            dependencies: [
                .module(at: "Shared/SharedCommonArchitecture"),
                .module(at: "Shared/SharedCommonModelContainer"),
                .module(at: "Wine/WineCoordinator")
            ]
        )
    ]
)
