Pod::Spec.new do |s|
  s.name             = 'Littlstar-iOS-SDK'
  s.version          = '1.0.9'
  s.summary          = 'Littlstar-iOS-SDK containing components for 360 video player'
  s.homepage         = 'https://littlstar.com/'
  s.license          = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2017 Littlstar. All rights reserved.
      LICENSE
  }
  s.author           = { 'Littlstar dev. team' => 'dev@littlstar.com' }
  s.source           = { :git => 'git@github.com:littlstar/ls-ios-sdk.git',
                         :branch => 'vp-bridge-pod-test' }

  s.social_media_url = 'https://www.instagram.com/littlstarvr/'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ls-ios-sdk', 'ls-ios-sdk/**/*.{h,m,mm,swift}'

  s.ios.frameworks = 'UIKit', 'GLKit', 'AVKit', 'Foundation', 'AVFoundation', 'Photos', 'MobileCoreServices', 'CoreMotion'

  s.dependency 'lottie-ios'

  s.resources = 'ls-ios-sdk/**/*.{json,glsl}'

  s.public_header_files = 'ls-ios-sdk/**/*.h'


  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }
end