Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.1.3"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 6c1834562cdc807b61642a3c9764ed8a7369823bfd89d584d59e69d079c00561
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.1.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
