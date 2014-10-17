Pod::Spec.new do |s|

  s.name         = "OJWT"
  s.version      = "0.0.1"
  s.summary      = "An Objective-C JSON Web Tokens Library"
  s.description  = <<-DESC
                   Inspired by by https://github.com/auth0/node-jsonwebtoken to allow iDevices(iOS and Mac)
                   an easy to use Framework. This pod allow for easy integration of JSON Web Tokens into 
                   Objective-C and Swift applications.
                   DESC
  s.homepage     = "https://github.com/hdost/ojwt"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = "Harold Dost III"
  s.social_media_url   = "http://twitter.com/hdost"

  s.source       = { :git => "https://github.com/hdost/ojwt.git", :tag=> "0.0.1" }

  #  When using multiple platforms
  s.ios.deployment_target = "7.1"
  s.osx.deployment_target = "10.8"

  s.requires_arc = true

  s.source_files  = "OJWT/*OJ*{.m,.h}"
  s.public_header_files = "OJWT/*.h"

end
