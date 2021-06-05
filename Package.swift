// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotKit+Logic",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DotKit+Logic",
            targets: ["DotKit+Logic"]),
    ],
    dependencies: [
        .package(url: "https://github.com/E13Lau/DotKit.git", .upToNextMinor(from: "0.0.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DotKit+Logic",
            dependencies: [
                "DotKit",
            ]),
        .testTarget(
            name: "DotKit+LogicTests",
            dependencies: ["DotKit+Logic"]),
    ]
)
