// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "swift-sequences",
	defaultLocalization: "en",
	products: [
		.library(name: "Sequences", targets: ["Sequences"])
	], targets: [
		.target(name: "Sequences", dependencies: []),
		.testTarget(name: "SequencesTests", dependencies: ["Sequences"]),
	], swiftLanguageVersions: [.version("5.5")]
)
