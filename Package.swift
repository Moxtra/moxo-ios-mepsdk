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
            url: "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.4.zip",
            checksum: "c855ee4b05e62d532ff174825610e79a5deba646aec26c91692b03c9f0fa3af8"
        )
    ]
)
