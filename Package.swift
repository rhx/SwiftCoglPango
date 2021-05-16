// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "CoglPango",
    products: [ .library(name: "CoglPango", targets: ["CoglPango"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/rhx/gir2swift.git", .branch("development")),
        .package(name: "Pango", url: "https://github.com/rhx/SwiftPango.git", .branch("development")),
        .package(name: "Cogl", url: "https://github.com/rhx/SwiftCogl.git", .branch("development")),
    ],
    targets: [
	.systemLibrary(name: "CCoglPango", pkgConfig: "cogl-pango-1.0",
	    providers: [
		.brew(["cogl", "cairo", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libcogl-pango-dev", "libcogl-gles2-dev", "libcogl-path-dev", "libcogl-dev", "libcairo2-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	    ]),
        .target(name: "CoglPango", dependencies: ["CCoglPango", "Cogl", "Pango"]),
        .testTarget(name: "CoglPangoTests", dependencies: ["CoglPango"]),
    ]
)
