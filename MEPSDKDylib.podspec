Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "9.12.8"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: a2eedda1c2cb92474d83e712745e85ee7f166db598cab646fcd0a30e3ecc028c
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v9.12.8.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
