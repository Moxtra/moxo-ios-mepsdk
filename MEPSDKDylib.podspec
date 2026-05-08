Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.10.3"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 2d737a7b02844c94f8d11dcf9005899c7c4f0d50e027467fe2f19bcf7e2af644
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.10.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
