// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "S4TFApp",
    platforms: [
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "S4TFLib",
            type: .dynamic,
            targets: ["S4TFLib"]),

        .executable(
            name: "S4TFApp",
            targets: ["S4TFApp"]),
    ],
    dependencies: [
        .package(name: "TensorFlowModels", url: "https://github.com/tensorflow/swift-models.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "S4TFLib",
            dependencies: [
                .product(name: "TextModels", package: "TensorFlowModels")
            ],
            path: "Sources/S4TFLib"),
        .target(
            name: "S4TFApp",
            dependencies: [
                "S4TFLib"
            ],
            path: "Sources/Example"),
        .testTarget(
            name: "S4TFAppTests",
            dependencies: ["S4TFApp"]),
    ]
)
