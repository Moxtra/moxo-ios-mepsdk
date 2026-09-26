Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.13.0"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 620f75c2149fb86c319d2877f4c85b2df06b875a2d6d8502739675c56f1637e7
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.0.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
