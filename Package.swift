// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    targets: [
        .target(name: "DateToolsSwift")
    ]
)
package.exclude = ["DateTools", "Examples", "Tests", "DateToolsSwift/Examples"]
