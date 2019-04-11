// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "sourcekite",
    products: [
        .executable(name: "sourcekite", targets: ["sourcekite"]),
    ],
    targets: [
        .target(name: "sourcekite", dependencies: ["Csourcekitd"]),
        .target(name: "Csourcekitd"),
    ]
)
