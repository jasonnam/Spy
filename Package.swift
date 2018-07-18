// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Spy",
    products: [
        .library(
            name: "Spy",
            targets: ["Spy"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Spy",
            dependencies: []),
        .testTarget(
            name: "SpyTests",
            dependencies: ["Spy"]),
    ]
)
