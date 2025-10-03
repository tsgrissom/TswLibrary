// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TxSwift",
    platforms: [.iOS(.v18), .macOS(.v15)],
    products: [
		// Define the one library this package produces, making it visible to other packages
		.library(name: "TxSwift", targets: ["TxSwift"]),
		//.library(name: "TxSwiftUI", targets: ["TxSwiftUI"]),
		//.library(name: "TxSwiftData", targets: ["TxSwiftData"]),
	],
    dependencies: [
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum.git", from: "2.2.1"),
        .package(url: "https://github.com/apple/swift-testing.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
		// OLD
//        .target(
//            name: "TswLibrary",
//            dependencies: [
//                "LoremSwiftum"
//            ]
//        ),
//        .testTarget(
//            name: "TswLibraryTests",
//            dependencies: [
//                "TswLibrary",
//                .product(name: "Testing", package: "swift-testing"),
//            ]
//        ),
		// Modules
		.target(name: "TxSwift", dependencies: ["LoremSwiftum"]),
		// Test Suites
		.testTarget(name: "TxSwiftTests", dependencies: ["TxSwift", .product(name: "Testing", package: "swift-testing")]),
    ],
)
