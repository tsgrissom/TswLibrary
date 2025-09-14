// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TswLibrary",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TswLibrary",
            targets: ["TswLibrary"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum.git", from: "2.2.1"),
        .package(url: "https://github.com/apple/swift-testing.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TswLibrary",
            dependencies: [
                .product(name: "LoremSwiftum", package: "LoremSwiftum"),
            ]
        ),
        .testTarget(
            name: "TswLibraryTests",
            dependencies: [
                "TswLibrary",
                .product(name: "Testing", package: "swift-testing"),
            ]
        ),
    ],
)
