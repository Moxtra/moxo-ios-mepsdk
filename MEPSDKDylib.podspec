Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.5.13"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 012c51d281e3690a7e3d0acbf9304e04fa31dfff961e9c866e7f44d6ae8aedd3
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.13.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
