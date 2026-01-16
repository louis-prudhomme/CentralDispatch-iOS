import ProjectDescription
import ProjectDescriptionHelpers

let targets: [Target] = [
    .target(
        name: "WineAppellationGenerator",
        destinations: .macOS,
        product: .commandLineTool,
        bundleId: "fr.prudhomme.louis.WineAppellationGenerator",
        infoPlist: .default,
        sources: ["Sources/**"],
        dependencies: [
            .external(name: "SwiftSoup"),
            .external(name: "SwiftHTMLtoMarkdown")
        ]
    )
]

let project = Project(
    name: "WineAppellationGenerator",
    targets: targets
)
