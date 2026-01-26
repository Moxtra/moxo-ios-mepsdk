Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.7.2"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: caedd42f03ea090b6d15f1703d5f3e5ba8736b5020e83cdfbb159458f443e8af
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.7.2.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
