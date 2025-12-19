Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.4.1"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 2eaa72cae222cff48e7a68f72241608cb1289967d977139ebc0bd18a0a8fd4d7
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.4.1.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
