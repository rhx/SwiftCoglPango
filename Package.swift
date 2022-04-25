// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "CoglPango",
    products: [ .library(name: "CoglPango", targets: ["CoglPango"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",       branch: "development"),
        .package(url: "https://github.com/rhx/SwiftPangoCairo.git", branch: "development"),
        .package(url: "https://github.com/rhx/SwiftCogl.git",       branch: "development"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
	.systemLibrary(name: "CCoglPango", pkgConfig: "cogl-pango-1.0",
	    providers: [
		.brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libcogl-pango-dev", "libcogl-gles2-dev", "libcogl-path-dev", "libcogl-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(
            name: "CoglPango",
            dependencies: [
                "CCoglPango",
                .product(name: "gir2swift",  package: "gir2swift"),
                .product(name: "Cogl",       package: "SwiftCogl"),
                .product(name: "PangoCairo", package: "SwiftPangoCairo"),
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "CoglPangoTests", dependencies: ["CoglPango"]),
    ]
)
