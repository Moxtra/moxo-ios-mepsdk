Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.3.8"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 20da67bd155cf080c2bd0fd9c8cef682b7f248f55ad89748db49cfad41035968
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.3.8.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
