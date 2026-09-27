Pod::Spec.new do |s|
  s.name        = "MEPSDKDylib"
  s.version     = "10.13.0"
  s.summary     = "Dynamic iOS SDK for the Moxo Engagement Platform"

  s.description = <<-DESC
MEP (Moxo Engagement Platform) is an SDK that enables partners to integrate Moxo services more easily.
  DESC

  s.homepage = "https://www.moxo.com"
  s.license  = { :type => "MIT" }
  s.author   = "Moxo Team"

  s.platform      = :ios, "15.0"
  s.swift_version = "5.0"

  # SHA256: 79227097c02366e7fb21062d5fa05cbfbe77415563b9cb8ac2e077350c3d4664
  s.source = {
    :http => "https://mxrepo.moxo.com/repository/customer-raw-releases/mepsdk/dynamic/Dynamic_MEPSDK_iOS_v10.13.0.zip"
  }

  s.vendored_frameworks = "MEPSDK.xcframework"
end
