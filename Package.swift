// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "Harmony",
  targets: [
    .target(name: "Utilities"),
    .target(name: "Fraction"),

    /// Tests
    .testTarget(name: "UtilitiesTests", dependencies: ["Utilities"]),
  ]
)
