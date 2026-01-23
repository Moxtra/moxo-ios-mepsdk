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
            url: "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.6.1.zip",
            checksum: "d1f126b1e278bcfb16c436cb53b7573f95998ed2535cf5783677cf4b636b409f"
        )
    ]
)
