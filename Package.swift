// swift-tools-version:5.3
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
            url: "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.13.zip",
            checksum: "012c51d281e3690a7e3d0acbf9304e04fa31dfff961e9c866e7f44d6ae8aedd3"
        )
    ]
)
