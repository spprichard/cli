// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cli",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "rep",
            dependencies: ["ArgumentParser"],
            path: "Sources/Repeat"),
        .target(
            name: "rol",
            dependencies: ["ArgumentParser"],
            path: "Sources/Roll"),
    ]
)
