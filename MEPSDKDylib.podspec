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

  # SHA256: 6f9cb5242f1da7a1287c97d41e4e77815384f01e7f4110f13c2b0389879ead6a
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.6.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
