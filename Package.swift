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
            url: "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.2.zip",
            checksum: "8df76189b936b5ca446d587e8f54245d2d1d7ad5dbf49ec476acc360340c104b"
        )
    ]
)
