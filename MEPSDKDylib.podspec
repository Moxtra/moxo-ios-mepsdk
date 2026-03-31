Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.9.2"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 303991c13dc8c82b31306cca82bb55ddef190b19eaa4738d0c81847b85fd20f5
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.9.2.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
