Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.12.6"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: fd2da10b7a6ae0683af9f1eb8cb4a5bd97367c55309109c31ad543bfe30d286c
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.12.6.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
