import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.project(
    name: "WineInteractor",
    hasResources: false,
    dependencies: [
        .external(name: "Dependencies"),
        .project(
            target: "SharedCommonDependencies",
            path: .relativeToRoot("Shared/SharedCommonDependencies")
        ),
        .project(
            target: "WineRepository",
            path: .relativeToRoot("Wine/WineRepository")
        ),
        .project(
            target: "WineDomain",
            path: .relativeToRoot("Wine/WineDomain")
        )
    ]
)
