import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
    .target(
        name: "WineCommonLocationClient",
        destinations: .iOS,
        product: .framework,
        bundleId: "fr.prudhomme.louis.WineCommonLocationClient",
        deploymentTargets: .iOS("17.0"),
        infoPlist: .default,
        sources: ["Sources/**"],
        dependencies: [
            .module(at: "Shared/SharedCommonDependencies"),
            .target(name: "WineCommonLocationClientShared"),
            .external(name: "URLQueryItemCoder")
        ]
    ),
    .target(
        name: "WineCommonLocationClientShared",
        destinations: .iOS.union(Set<Destination>.macOS),
        product: .framework,
        bundleId: "fr.prudhomme.louis.WineCommonLocationClientShared",
        deploymentTargets: .multiplatform(iOS: "17.0", macOS: "14.0"),
        infoPlist: .default,
        sources: ["Shared/**"],
        dependencies: [
            .external(name: "URLQueryItemCoder")
        ]
    ),
    .target(
        name: "WineCommonLocationClientGenerator",
        destinations: .macOS,
        product: .commandLineTool,
        bundleId: "com.example.WineCommonLocationClientGenerator",
        infoPlist: .default,
        sources: ["Generator/**"],

        dependencies: [
            .target(name: "WineCommonLocationClientShared")
        ]
    )
]

let project = Project(
    name: "WineCommonLocationClient",
    targets: targets
)

/*
 To use this common module, add this to your target's Project.swift:
 ```swift
 .module(at: "Wine/WineCommonLocation"),
 ```
 Or alternatively, if used in another group, adjust the path accordingly:
 ```swift
 .module(at: "Wine/WineCommonLocation"),
 ```
 */
