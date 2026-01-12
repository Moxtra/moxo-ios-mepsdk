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
            url: "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.6.3.zip",
            checksum: "6f9cb5242f1da7a1287c97d41e4e77815384f01e7f4110f13c2b0389879ead6a"
        )
    ]
)
