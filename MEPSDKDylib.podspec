Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.5.10"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 31596bf712863e02bf3e33bf0c76adec897af9640f191a416bbbba3c30a50836
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.10.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
