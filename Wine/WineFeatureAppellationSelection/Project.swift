import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.project(
    name: "WineFeatureAppellationSelection",
    hasResources: false,
    dependencies: [
        .module(at: "Shared/SharedCommonArchitecture"),
        .module(at: "Shared/SharedCommonDesignSystem"),
        .module(at: "Shared/SharedCommonPictureClient"),
        .module(at: "Wine/WineCommonLocationClient"),
        .module(at: "Wine/WineInteractor")
    ]
)

/*
 To use this feature in a Coordinator, add this to the Coordinator's Project.swift:
 ```swift
 .module(at: "Wine/WineFeatureAppellationSelection"),
 */
