Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.13.3"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 6bced3a01953a9a52fcb49b876176b6a71676e5581ddcb4146b13f94f36d2dcb
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
