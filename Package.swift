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
            url: "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.11.zip",
            checksum: "6a0942ede6b007573c1deb4895c45d93efe59eb130f4f1d83583c80a045acfa9"
        )
    ]
)
