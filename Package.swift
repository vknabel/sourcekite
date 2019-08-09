// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "sourcekite",
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten", from: "0.24.0"),
    ],
    targets: [
        .target(name: "sourcekite", dependencies: ["SourceKittenFramework"]),
    ]
)
