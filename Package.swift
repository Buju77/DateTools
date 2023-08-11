// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

// 2023-08-11 yel: file copied from https://github.com/lancy-mega/DateTools/blob/master/Package.swift and fixed `SWIFTPM_MODULE_BUNDLE` in line 26 and line 33

let package = Package(
    name: "DateToolsSwift",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .macOS(.v10_13),
    ],
    products: [
        .library(name: "DateToolsSwift", targets: ["DateToolsSwift"]),
        .library(name: "DateToolsObjc", targets: ["DateToolsObjc"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DateToolsSwift",
            path: "DateToolsSwift/DateTools",
            resources: [.copy("DateTools.bundle")],
            swiftSettings: [.define("SWIFTPM_MODULE_BUNDLE")]
        ),
        .target(
            name: "DateToolsObjc",
            path: "DateTools/DateTools",
            resources: [.copy("DateTools.bundle")],
            publicHeadersPath: ".",
            cSettings: [.define("SWIFTPM_MODULE_BUNDLE")]
        ),
        .testTarget(
            name: "DateToolsSwiftTests",
            dependencies: ["DateToolsSwift"],
            path: "DateToolsSwift/Tests/PackageTests"
        ),
        .testTarget(
            name: "DateToolsObjcTests",
            dependencies: ["DateToolsObjc"],
            path: "DateToolsSwift/Tests/PackageTestsObjc"
        )
    ]
)
  
