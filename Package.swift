// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "sourcekite",
    products: [
        .executable(name: "sourcekite", targets: ["sourcekite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten", from: "0.27.0"),
    ],
    targets: [
        .target(name: "sourcekite", dependencies: ["SourceKittenFramework"]),
    ]
)