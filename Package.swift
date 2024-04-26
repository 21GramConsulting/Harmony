// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "Harmony",
  targets: [
    .target(
      name: "Utilities"
    ),

    /// Tests
    .testTarget(name: "UtilitiesTests", dependencies: ["Utilities"]),
  ]
)
