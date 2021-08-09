// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "pretty",
    products: [
        .executable(name: "pretty", targets: ["Pretty"])
    ],
    targets: [
        .target(name: "Pretty")
    ]
)
