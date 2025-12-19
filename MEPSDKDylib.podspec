Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.1.1"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: e0c9fc1b12d1ad463480a4ff40cb0e15f74a79d9dafbc63f17e4887ea76b2f46
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.1.1.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
