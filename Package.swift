// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIDevice+Extension",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "UIDevice+Extension",
            targets: ["UIDevice+Extension"]),
    ],
    targets: [
        .target(
            name: "UIDevice+Extension",
            dependencies: []),
        .testTarget(
            name: "UIDevice+ExtensionTests",
            dependencies: ["UIDevice+Extension"]),
    ]
)
