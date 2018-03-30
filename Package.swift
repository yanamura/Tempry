// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tempry",
    products: [
        .library(
            name: "Tempry",
            targets: ["Tempry"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Tempry",
            dependencies: []),
        .testTarget(
            name: "TempryTests",
            dependencies: ["Tempry"]),
    ]
)
