// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "swift-extensions",
	defaultLocalization: "en",
	products: [
		.library(name: "Extensions", targets: ["Extensions"])
	], targets: [
		.target(name: "Extensions", dependencies: []),
		.testTarget(name: "ExtensionsTests", dependencies: ["Extensions"]),
	], swiftLanguageVersions: [.version("5.5")]
)
