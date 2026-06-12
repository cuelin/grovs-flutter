// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "grovs_flutter_plugin",
  platforms: [
    .iOS("13.0"),
  ],
  products: [
    .library(name: "grovs-flutter-plugin", targets: ["grovs_flutter_plugin"]),
  ],
  dependencies: [
    // Native Grovs iOS SDK (SPM). Mirrors the CocoaPods `Grovs ~> 2.3` dependency.
    .package(url: "https://github.com/grovs-io/grovs-iOS.git", from: "2.3.0"),
  ],
  targets: [
    .target(
      name: "grovs_flutter_plugin",
      dependencies: [
        // If SPM complains about the package identity, try lowercase "grovs-ios".
        .product(name: "Grovs", package: "grovs-iOS"),
      ],
      resources: [
        .process("PrivacyInfo.xcprivacy"),
      ]
    ),
  ]
)
