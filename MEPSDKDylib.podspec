Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.11.0"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 18f155b24406ed4d03272870ffbbeeba698eb4e6edd41a24d00bc31b837d2472
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.11.0.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
