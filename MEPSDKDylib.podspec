Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.12.0"
  s.summary     = "Dynamic lib for MEPSDK"

  s.description = <<-DESC
MEP(Moxtra Engagement Platform) is a SDK or platform for partners to intergrate Moxtra service more easily.
  DESC

  s.homepage = "https://www.moxtra.com"
  s.license  = { :type => "MIT" }
  s.author   = { "john.hu" => "john.hu@moxtra.com" }

  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"

  # SHA256: 694640119805c3188779ce3e6940d7636a79c46a1003529dbc8e707ab3f61885
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.12.0.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
