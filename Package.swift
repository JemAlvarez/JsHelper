// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JsHelper",
    platforms: [.iOS(.v11)],
    products: [
        .library( name: "JsHelper", targets: ["JsHelper"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "JsHelper",
            dependencies: [],
            resources: [
                .process("Docs/SwiftLint.md"),
                .process("Docs/Fonts.md"),
                .process("Docs/NavigationControllerPopGesture.md"),
                .process("Docs/GitIgnore.md")
            ]
        ),
    ]
)
