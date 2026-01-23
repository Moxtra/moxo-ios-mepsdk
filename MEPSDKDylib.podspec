Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.6.3"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 457854cd6cff0dcbddc6c9fa5cc2742a1347fa285e350d1d69bd87a4969fc38d
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.6.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
