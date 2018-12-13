// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CoglPango",
    products: [
        .library(name: "CoglPango", targets: ["CoglPango"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CPango.git", .branch("master")),
        .package(url: "https://github.com/rhx/CCoglPango.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftPango.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftCogl.git", .branch("master")),
    ],
    targets: [
        .target(name: "CoglPango", dependencies: ["Cogl", "Pango"]),
        .testTarget(name: "CoglPangoTests", dependencies: ["CoglPango"]),
    ]
)
