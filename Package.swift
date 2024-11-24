// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "He-lp-",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", from: "0.2.0")
    ],
    targets: [
        .executableTarget(
            name: "He-lp-",
            dependencies: ["Ignite"]),
    ]
)
