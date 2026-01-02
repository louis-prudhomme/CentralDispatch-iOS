import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.project(
    name: "SharedCommonInteractor",
    hasResources: false,
    hasTests: false,
    dependencies: [
        .project(
            target: "SharedCommonDependencies",
            path: .relativeToRoot("Shared/SharedCommonDependencies")
        )
    ]
)
