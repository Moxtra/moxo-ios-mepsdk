Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.7.3"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 6a1810c4e2a4680de55854736b6fece923f0404c97df34c8bdb1a484509d9c47
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.7.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
