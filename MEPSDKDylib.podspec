Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.12.0"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 694640119805c3188779ce3e6940d7636a79c46a1003529dbc8e707ab3f61885
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.12.0.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
