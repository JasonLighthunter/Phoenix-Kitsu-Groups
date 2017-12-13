// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PhoenixKitsuGroups",
  products: [
    .library(name: "PhoenixKitsuGroups", targets: ["PhoenixKitsuGroups"])
  ],
  dependencies: [
    .package(url: "https://github.com/JasonLighthunter/Phoenix-Kitsu-Core.git", .branch("setup"))
  ],
  targets: [
    .target(name: "PhoenixKitsuGroups", dependencies: ["PhoenixKitsuCore"]),
    .testTarget(name: "PhoenixKitsuGroupsTests", dependencies: ["PhoenixKitsuGroups"])
  ]
)
