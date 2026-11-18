// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MEPSDK",
    platforms: [
        .iOS(.v15)
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
            url: "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.3.zip",
            checksum: "6bced3a01953a9a52fcb49b876176b6a71676e5581ddcb4146b13f94f36d2dcb"
        )
    ]
)
