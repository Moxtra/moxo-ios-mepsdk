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
            url: "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v9.12.8.zip",
            checksum: "a2eedda1c2cb92474d83e712745e85ee7f166db598cab646fcd0a30e3ecc028c"
        )
    ]
)
