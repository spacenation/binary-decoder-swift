// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "BinaryDecoder",
    products: [
        .library(name: "BinaryDecoder", targets: ["BinaryDecoder"])
    ],
    dependencies: [
        .package(name: "Decoder", url: "git@github.com:spacenation/swift-decoder.git", from: "0.2.7"),
        .package(name: "Binary", url: "git@github.com:spacenation/swift-binary.git", from: "0.1.7")
    ],
    targets: [
        .target(name: "BinaryDecoder", dependencies: ["Decoder", "Binary"]),
        .testTarget(name: "BinaryDecoderTests", dependencies: ["BinaryDecoder"])
    ]
)
