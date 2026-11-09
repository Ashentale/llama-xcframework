// swift-tools-version:6.0
// Prebuilt llama.cpp for iOS (device + simulator), packaged for Ashentale.
// Built from an upstream llama.cpp tag by scripts/release-llama-xcframework.sh in the app repo.
// Version scheme: 1.<llama.cpp build>.<packaging revision>.
import PackageDescription

let package = Package(
    name: "llama-xcframework",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "llama", targets: ["llama"])
    ],
    targets: [
        .binaryTarget(
            name: "llama",
            url: "https://github.com/Ashentale/llama-xcframework/releases/download/1.12212.0/llama.xcframework.zip",
            checksum: "3f1595c9c6d70d5ba7e8f17fe350649458d7fdaf158bde646af023f4c4c9c196"
        )
    ]
)
