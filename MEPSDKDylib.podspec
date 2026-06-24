Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.11.1"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 0328e0c5623dd1babcbc003b58effe75fa4f305944a229540b1afcd7daf6b5f3
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.11.1.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
