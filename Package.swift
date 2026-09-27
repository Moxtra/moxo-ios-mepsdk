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
            url: "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.0.zip",
            checksum: "79227097c02366e7fb21062d5fa05cbfbe77415563b9cb8ac2e077350c3d4664"
        )
    ]
)
