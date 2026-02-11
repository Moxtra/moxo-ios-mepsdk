Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.4.8"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 8545543d7ed08b0409ddcfaed9fac6b194556d6825e01c74cd6bae4a69d4bd68
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.4.8.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
