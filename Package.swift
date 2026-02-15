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
            url: "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.8.1.zip",
            checksum: "b7f458d8d0cbfae7fdb7b870a6c00549afe1248184a7aecd5f9716d9c5697046"
        )
    ]
)
