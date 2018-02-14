Pod::Spec.new do |s|
  s.name             = 'LittlstarPlayerSDK'
  s.version          = '0.0.1'
  s.summary          = 'Littlstar Player SDK containing components for 360 video player'
  s.homepage         = 'https://littlstar.com/'
  s.license          = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2017 Littlstar. All rights reserved.
      LICENSE
  }
  s.author           = { 'Littlstar dev. team' => 'dev@littlstar.com' }
  s.source           = { :git => 'git@github.com:littlstar/ls-ios-sdk.git',
                         :branch => 'vp-name' }

  s.social_media_url = 'https://www.instagram.com/littlstarvr/'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LittlstarPlayerSDK', 'LittlstarPlayerSDK/**/*.{h,m,mm,swift}'

  s.ios.frameworks = 'UIKit', 'GLKit', 'AVKit', 'Foundation', 'AVFoundation', 'Photos', 'MobileCoreServices', 'CoreMotion'

  s.dependency 'lottie-ios'

  s.resources = 'LittlstarPlayerSDK/**/*.{json,glsl}'

  s.public_header_files = 'LittlstarPlayerSDK/**/*.h'


  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }
end