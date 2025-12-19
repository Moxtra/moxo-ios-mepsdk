Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "9.8.6"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: ecfdded0188238d8e25ddaa40ba4c3d41af2e21aea4acc56f07e707245550028
  s.source = {
    :http => "https://cdn.moxtra.com/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v9.8.6.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
