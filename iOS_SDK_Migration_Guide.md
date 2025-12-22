- [iOS SDK Migration Guide](#ios-sdk-migration-guide)
  * [Migrating to Dynamic Library with Swift Package Manager](#migrating-to-dynamic-library-with-swift-package-manager)
    + [Overview](#overview)
    + [Why Migrate?](#why-migrate)
  * [Repository Information](#repository-information)
  * [Migration Options](#migration-options)
    + [Option A: Migrate to Swift Package Manager (Recommended)](#option-a-migrate-to-swift-package-manager-recommended)
    + [Option B: Stay on CocoaPods with Dynamic Library](#option-b-stay-on-cocoapods-with-dynamic-library)
  * [Migration Scenarios](#migration-scenarios)
  * [Detailed Migration Steps](#detailed-migration-steps)
    + [Scenario 1: CocoaPods Static/Old Dynamic → CocoaPods Dynamic](##scenario-1-cocoapods-staticold-dynamic--cocoapods-dynamic-1)
    + [Scenario 2: CocoaPods → SPM + Dynamic Library (Recommended Migration)](#scenario-2-cocoapods--spm--dynamic-library-recommended-migration-1)
    + [Scenario 3: SPM Old Repo → SPM New Repo + Dynamic Library](#scenario-3-spm-old-repo--spm-new-repo--dynamic-library-1)
    + [Scenario 4: Manual Installation → SPM or CocoaPods + Dynamic Library](#scenario-4-manual-installation--spm-or-cocoapods--dynamic-library-1)

# iOS SDK Migration Guide
## Migrating to Dynamic Library with Swift Package Manager

### Overview

This document provides step-by-step migration instructions for most of iOS SDK integration scenarios. Our goal is to standardize on **Dynamic Library** distribution via **Swift Package Manager (SPM)** for better maintainability and modern iOS development practices.

### Why Migrate?
- **Dynamic Library**: Better memory management, smaller app size, and easier updates
- **Swift Package Manager**: Native Xcode integration, faster dependency resolution, and better version management (recommended)
- **CocoaPods Still Supported**: You can stay on CocoaPods if preferred, just migrate to dynamic library
- **New Repository & CDN**: Address changed from https://maven.moxtra.com/repo to https://github.com/Moxtra/moxo-ios-mepsdk. Now hosted on GitHub with binaries on Moxo CDN for faster global downloads

---

## Repository Information

**New GitHub Repository**: [https://github.com/Moxtra/moxo-ios-mepsdk](https://github.com/Moxtra/moxo-ios-mepsdk)

## Migration Options

You have **two migration paths** - choose what works best for your team:

### Option A: Migrate to Swift Package Manager (Recommended)
- ✅ Native Xcode integration
- ✅ No external tools needed
- ✅ Faster dependency resolution
- ✅ Apple's recommended approach
- **Choose this if**: You want the most modern approach

### Option B: Stay on CocoaPods with Dynamic Library
- ✅ Keep your existing workflow
- ✅ CocoaPods still fully supported
- ✅ Just switch to MEPSDKDylib pod
- **Choose this if**: Your project relies heavily on CocoaPods

**Both options are fully supported!** The key goal is to migrate to **Dynamic Library**, regardless of the package manager.

---

## Migration Scenarios

Identify your current setup and follow the corresponding migration path:

### Scenario 1: CocoaPods Static/Old Dynamic → CocoaPods Dynamic

### Scenario 2: CocoaPods → SPM + Dynamic Library (Recommended Migration)

### Scenario 3: SPM Old Repo → SPM New Repo + Dynamic Library

### Scenario 4: Manual Installation → SPM or CocoaPods + Dynamic Library

---

## Detailed Migration Steps

### Scenario 1: CocoaPods Static/Old Dynamic → CocoaPods Dynamic

#### Current Setup
```ruby
# Podfile
pod 'MEPSDK', '~> 10.1.4'  # Static library (old)
# or dynamic library 
pod 'MEPSDKDylib', '~> 10.1.4' # Dynamic library (old)
```

#### Migration Steps

**This is the simplest migration!** Just update your Podfile to use the dynamic library pod.

**Step 1: Update Podfile**

Replace the old static pod with the dynamic pod:

```ruby
# Old (remove this):
# pod 'MEPSDK', '~> 10.1.4'
# pod 'MEPSDKDylib', '~> 10.1.4'

# New (add this):
pod 'MEPSDKDylib',
    :podspec => 'https://raw.githubusercontent.com/Moxtra/moxo-ios-mepsdk/10.6.1/MEPSDKDylib.podspec'
```

**Important**: Replace `10.6.1` with the specific version you need. See [releases](https://github.com/Moxtra/moxo-ios-mepsdk/releases) for available versions.

**Step 2: Install**

```bash
pod install
```

**Step 3: Update Build Settings** (if needed)

1. Open your `.xcworkspace`
2. Select your target
3. Go to **Build Settings**
4. Search for "Other Linker Flags"
5. Remove any static library flags (e.g., `-ObjC`, `-lc++`) if they were added specifically for MEPSDK

**Step 4: Verify Embed Settings**

1. Select your target
2. Go to **General → Frameworks, Libraries, and Embedded Content**
3. Ensure MEPSDK framework shows **"Embed & Sign"**

**Step 5: Clean and Build**

```bash
# In Xcode
Product → Clean Build Folder (Cmd + Shift + K)
Product → Build (Cmd + B)
```

**Step 6: Test**

- Run on simulator
- Run on physical device
- Verify all SDK features work

---

### Scenario 2: CocoaPods → SPM + Dynamic Library (Recommended Migration)

#### Current Setup
```ruby
# Podfile
pod 'MEPSDK', '~> 9.12.7'  # Static
# or
pod 'MEPSDKDylib', '~> 9.12.7'  # Dynamic (old podspec)
```

#### Migration Steps

**Step 1: Remove CocoaPods Integration**

1. Close your Xcode project
2. Open Terminal and navigate to your project directory
3. Remove CocoaPods:
   ```bash
   # Remove Pods folder and workspace
   rm -rf Pods/
   rm -rf YourProject.xcworkspace
   rm Podfile
   rm Podfile.lock
   
   # Remove CocoaPods references from .xcodeproj
   pod deintegrate
   ```

**Step 2: Open Project in Xcode**

```bash
# Open the .xcodeproj file (not workspace)
open YourProject.xcodeproj
```

**Step 3: Add Swift Package Manager Dependency**

1. In Xcode, go to **File → Add Package Dependencies...**
2. Enter the new repository URL:
   ```
   https://github.com/Moxtra/moxo-ios-mepsdk.git
   ```
3. Select **Version Rules**: "Up to Next Major" (e.g., 10.6.1 < 10.7.0)
4. Click **Add Package**
5. Select your target and ensure the dynamic framework is added
6. Click **Add Package** again to confirm

**Step 4: Update Import Statements**

Your import statements should remain the same:
```swift
import MEPSDK
```

**Step 5: Remove Static Library Linker Flags** (if any)

1. Select your target in Xcode
2. Go to **Build Settings**
3. Search for "Other Linker Flags"
4. Remove any flags related to the static library (e.g., `-ObjC`, `-lc++`)

**Step 6: Update Embed Settings**

1. Select your target
2. Go to **General → Frameworks, Libraries, and Embedded Content**
3. Ensure the SDK framework is set to **"Embed & Sign"** (not "Do Not Embed")

**Step 7: Clean Build**

```bash
# In Xcode
Product → Clean Build Folder (Cmd + Shift + K)
Product → Build (Cmd + B)
```

**Step 8: Test Your Integration**

- Run your app on a simulator
- Run your app on a physical device
- Verify all SDK functionality works as expected

#### Troubleshooting

**Build Error: "Library not found"**
- Ensure you've removed all CocoaPods references
- Clean derived data: `rm -rf ~/Library/Developer/Xcode/DerivedData/*`

**Runtime Error: "dyld: Library not loaded"**
- Verify framework is set to "Embed & Sign"
- Check that the framework is in "Frameworks, Libraries, and Embedded Content"

---

### Scenario 3: SPM Old Repo → SPM New Repo + Dynamic Library

#### Current Setup
```swift
// Package.swift or Xcode SPM configuration
// Using old repository address
dependencies: [
  .package(url: "https://maven.moxtra.com/repo/mepsdkdylib.git", from: "10.3.1")
]
```

#### Migration Steps

**This is a simple repository URL update!**

**Step 1: Remove Old Package**

1. In Xcode, select your project in the navigator
2. Select your project (not target)
3. Go to **Package Dependencies** tab
4. Select the old SDK package
5. Click the **"-"** button to remove it

**Step 2: Add New Package from GitHub**

1. Click **"+"** button
2. Enter the new repository URL:
   ```
   https://github.com/Moxtra/moxo-ios-mepsdk.git
   ```
3. Select appropriate version (e.g., 10.6.1 or later)
4. Click **Add Package**
5. Select `MEPSDK` library
6. Select your target(s) and click **Add Package**

**Step 3: Update Embed Settings** (if needed)

1. Select your target
2. Go to **General → Frameworks, Libraries, and Embedded Content**
3. Ensure SDK framework is set to **"Embed & Sign"**

**Step 4: Clean and Build**

```bash
# In Xcode
Product → Clean Build Folder (Cmd + Shift + K)
Product → Build (Cmd + B)
```

**Step 5: Verify Package Resolution**

- Go to **File → Packages → Reset Package Caches**
- Go to **File → Packages → Update to Latest Package Versions**

---

### Scenario 4: Manual Installation → SPM or CocoaPods + Dynamic Library

#### Current Setup
- XCFramework manually copied to project
- Framework manually added to "Frameworks, Libraries, and Embedded Content"
- Possibly custom React Native or Cordova wrapper

#### Migration Steps

You can choose either **SPM** (recommended) or **CocoaPods** (if your project uses it).

**Step 1: Remove Manual Framework**

1. In Xcode Project Navigator, locate the manually added framework
2. Select it and press **Delete**
3. Choose **"Move to Trash"**

**Step 2: Remove Framework from Build Phases**

1. Select your target
2. Go to **Build Phases**
3. Expand **"Link Binary With Libraries"**
4. Remove the old framework reference (click **"-"**)
5. Expand **"Embed Frameworks"** (if present)
6. Remove the old framework reference

**Step 3: Clean Framework Search Paths**

1. Go to **Build Settings**
2. Search for "Framework Search Paths"
3. Remove any custom paths pointing to the old framework

**Step 4A: Add via SPM (Recommended)**

1. Go to **File → Add Package Dependencies...**
2. Enter repository URL:
   ```
   https://github.com/Moxtra/moxo-ios-mepsdk.git
   ```
3. Select version (e.g., 10.6.1)
4. Add to your target

**Step 4B: Add via CocoaPods (Alternative)**

1. Create or update `Podfile`:
   ```ruby
   use_frameworks! :linkage => :dynamic
   
   target 'YourApp' do
     pod 'MEPSDKDylib',
         :podspec => 'https://raw.githubusercontent.com/Moxtra/moxo-ios-mepsdk/10.6.1/MEPSDKDylib.podspec'
   end
   ```

2. Run:
   ```bash
   pod install
   ```

3. Open the `.xcworkspace` file

**Step 5: Update Custom Wrappers** (if applicable)

If you have custom React Native or Cordova wrappers:

**For React Native:**
```ruby
# YourSDKReactNative.podspec
Pod::Spec.new do |s|
  s.name         = "YourSDKReactNative"
  s.version      = "1.0.0"
  # ... other config
  
  # Add dynamic SDK dependency
  s.dependency "MEPSDKDylib", "~> 10.6.1"
end
```

**For Cordova:**
```xml
<!-- plugin.xml -->
<!-- Update framework reference to use podspec -->
<podspec>
  <config>
    <source url="https://github.com/CocoaPods/Specs.git"/>
  </config>
  <pods use-frameworks="true">
    <pod name="MEPSDKDylib" spec="~> 10.6.1" />
  </pods>
</podspec>
```

**Step 6: Rebuild**

```bash
# Clean everything
rm -rf ~/Library/Developer/Xcode/DerivedData/*
# In Xcode
Product → Clean Build Folder
Product → Build
```
---
