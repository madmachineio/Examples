// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mission10_Humiture_Sensor",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/madmachineio/SwiftIO.git", from: "0.0.1"),
        .package(url: "https://github.com/madmachineio/MadBoards.git", from: "0.0.1"),
        .package(url: "https://github.com/madmachineio/MadDrivers.git", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Mission10_Humiture_Sensor",
            dependencies: [
                "SwiftIO",
                "MadBoards",
                "MadDrivers"]),
        .testTarget(
            name: "Mission10_Humiture_SensorTests",
            dependencies: ["Mission10_Humiture_Sensor"]),
    ]
)
