Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.8.1"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: b7f458d8d0cbfae7fdb7b870a6c00549afe1248184a7aecd5f9716d9c5697046
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.8.1.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
