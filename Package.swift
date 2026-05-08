// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MEPSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MEPSDK",
            targets: ["MEPSDKBinary"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MEPSDKBinary",
            url: "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.10.3.zip",
            checksum: "2d737a7b02844c94f8d11dcf9005899c7c4f0d50e027467fe2f19bcf7e2af644"
        )
    ]
)
