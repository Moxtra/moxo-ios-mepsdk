Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.13.4"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 8748ecd061c69e0debf4fad5672b58ee18f7d7a5dc1c94fe4d4fc87c93cf1838
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.4.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
