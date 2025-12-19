Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.6.1"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT"}
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 698b9d954dc296dffb4f30b4a343debaacc99852699f2683fe453998ed3fb522
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.6.1.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
