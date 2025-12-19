Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "9.12.7"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 6a2a07ca585aa4fc0b9baca69895b36e6835dd05e2d97ee796d3aedbc9341f28
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v9.12.7.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
