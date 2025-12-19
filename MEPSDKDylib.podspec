Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.1.5"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 21146f867a4c230c16f920f10acad918270bc54c0dd75b7234c7d3b3e30f9224
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.1.5.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
