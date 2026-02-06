Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.5.6"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: e962eb2ca48fa816f0e4c10052ebc8b39884f4fb001bdc5ad35fc072c2dff402
  s.source = {
    :http => "https://maven.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.5.6.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
