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
            url: "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.4.8.zip",
            checksum: "8545543d7ed08b0409ddcfaed9fac6b194556d6825e01c74cd6bae4a69d4bd68"
        )
    ]
)
