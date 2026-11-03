Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.13.2"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 35cc3a0c72817b53bdae495fb926d76bd093a133a52e979cc5551e234be957e7
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.2.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
