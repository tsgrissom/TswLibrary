// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TxLib",
    platforms: [.iOS(.v18), .macOS(.v15)],
    products: [
		// Define the one library this package produces, making it visible to other packages
		.library(name: "TxSwift", targets: ["TxSwift"]),
		//.library(name: "TxSwiftUI", targets: ["TxSwiftUI"]),
		//.library(name: "TxSwiftData", targets: ["TxSwiftData"]),
	],
    dependencies: [
        .package(url: "https://github.com/apple/swift-testing.git", branch: "main"),
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum.git", from: "2.2.1"),
    ],
    targets: [
		// Modules
		.target(
            name: "TxSwift",
            dependencies: ["LoremSwiftum"],
            path: "Sources/TxSwift",
        ),
        .target(
            name: "TxSwiftUI",
            dependencies: ["TxSwift"],
            path: "Sources/TxSwiftUI",
        ),
		// Test Suites
		.testTarget(
            name: "TxSwiftTests",
            dependencies: ["TxSwift", .product(name: "Testing", package: "swift-testing")]
        ),
    ],
)
