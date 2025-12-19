Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.5.3"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 09f7dae2a2640f214dbcac6efca5a06827a5f634ce501efd432e79ea0438f66d
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.3.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
