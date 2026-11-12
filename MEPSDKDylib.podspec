Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.12.5"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 69eea6159ab4f23d37f6e4c45c819c45c73be183b9c60ce90c8f104a318e1f3e
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.12.5.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
