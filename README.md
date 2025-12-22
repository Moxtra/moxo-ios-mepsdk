# MEPSDKDylib

Dynamic lib for Moxo MEPSDK


This repository is the distribution index for the Moxo iOS MEPSDK.

It provides:
- Swift Package Manager (SPM) support
- CocoaPods support

The actual SDK binaries are hosted on Moxo CDN and delivered as prebuilt xcframework archives.


---

## Requirements

- iOS 13.0 or later
- Xcode 12 or later
- Swift 5 or later

---

## Swift Package Manager (SPM)

### Add via Xcode

1. Open your project in Xcode
2. Go to File → Add Packages…
3. Enter the repository URL:https://github.com/Moxtra/moxo-ios-mepsdk.git

4. Select the required version (for example: 10.4.2)
5. Add the MEPSDK library to your target

Xcode will automatically download the binary framework from Moxo CDN.

---

### Add via Package.swift

Add the dependency:
```
dependencies: [
    .package(
        url: "https://github.com/Moxtra/moxo-ios-mepsdk.git",
        from: "10.4.2"
    )
]
```
Then add the product to your target:
```
.target(
    name: "YourApp",
    dependencies: [
        .product(name: "MEPSDK", package: "moxo-ios-mepsdk")
    ]
)
```
---

## CocoaPods


Add the following to your Podfile:
```
pod 'MEPSDKDylib',
    :podspec => 'https://raw.githubusercontent.com/Moxtra/moxo-ios-mepsdk/${VERSION}/MEPSDKDylib.podspec'
```
Replace VERSION with the Git tag of the SDK release.

Example:
```
pod 'MEPSDKDylib',
    :podspec => 'https://raw.githubusercontent.com/Moxtra/moxo-ios-mepsdk/10.6.1/MEPSDKDylib.podspec'
```
Then run:
```
pod install
```
Notes:
This repository is an index repository.
The actual binary (MEPSDK.xcframework) is hosted on Moxo CDN and is downloaded via the podspec.
Do NOT use :git to integrate this pod.
---

## Versioning

- Git tags correspond to SDK versions (for example: 10.6.1)
- Each version points to a specific binary release hosted on CDN
- Upgrading only requires updating the version number

---

## Notes

- This repository does not contain SDK source code
- SDK binaries are distributed as signed xcframework bundles
- No additional access control is required to download the SDK
- Previously the package referenced a local binary at ./Common/MEPSDK.xcframework.
- Now it uses a remote binaryTarget URL (with checksum). No script changes are required if you use standard SPM resolution,but your build environment must be able to access https://cdn.moxtra.com/ to download the zip.
- Please remove any steps that reference or copy ./Common/MEPSDK.xcframework.
---

## Support

For integration questions or issues, please contact Moxo support.
