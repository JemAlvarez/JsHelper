// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JsHelper",
    products: [
        .library( name: "JsHelper", targets: ["JsHelper"])
    ],
    dependencies: [
        .package(url: "https://github.com/JemAlvarez/onboarder", branch: "master")
    ],
    targets: [
        .target(name: "JsHelper", dependencies: [.product(name: "Onboarder", package: "onboarder")]),
    ]
)
