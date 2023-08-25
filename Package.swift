// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    defaultLocalization: "en",
    products: [
        .library(
            name: "DateToolsSwift",
            targets: ["DateToolsSwift"])
    ],
    targets: [
        .target(name: "DateToolsSwift",
                path: "DateToolsSwift/DateTools",
                exclude: [
                    "DateTools",
                    "DateTools.bundle",
                    "Examples",
                    "Tests",
                    "DateTools/DateTools.bundle",
                    "DateToolsSwift/Tests",
                    "DateToolsSwift/DateTools/DateTools.bundle",
                    "DateToolsSwift/Examples"],
                resources: [.copy("../Resources/DateTools.bundle")])
    ]
)
