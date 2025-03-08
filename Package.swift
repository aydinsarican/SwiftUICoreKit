// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUICoreKit",
    platforms: [
        .iOS(.v17),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "SwiftUICoreKit",
            targets: ["SwiftUICoreKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUICoreKit",
            dependencies: [],
            path: "Sources/SwiftUICoreKit"
        ),
        .testTarget(
            name: "SwiftUICoreKitTests",
            dependencies: ["SwiftUICoreKit"],
            path: "Tests/SwiftUICoreKitTests"
        )
    ]
)
