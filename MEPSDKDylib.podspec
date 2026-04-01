Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.8.5"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: d8c045ff392790a4a452f9f8e3c0a91a41348e7dc70dbdbd664f53b944e125be
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.8.5.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
