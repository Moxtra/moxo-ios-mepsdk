Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "a.b.c"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT", :file => "./LICENSE" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: CHECKSUM_PLACEHOLDER
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_va.b.c.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end