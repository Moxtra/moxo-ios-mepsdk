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
            url: "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.11.1.zip",
            checksum: "0328e0c5623dd1babcbc003b58effe75fa4f305944a229540b1afcd7daf6b5f3"
        )
    ]
)
