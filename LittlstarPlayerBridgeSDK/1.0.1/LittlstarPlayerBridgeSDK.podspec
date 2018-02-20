Pod::Spec.new do |s|
  s.name             = 'LittlstarPlayerBridgeSDK'
  s.version          = '1.0.1'
  s.summary          = 'Littlstar-iOS-SDK containing components for panorama video'
  s.homepage         = 'https://littlstar.com/'
  s.license          = { 
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2017 Littlstar. All rights reserved.
      LICENSE
  }
  s.author           = { 'Littlstar dev. team' => 'dev@littlstar.com' }
  s.source           = { :git => 'git@github.com:littlstar/Littlstar-iOS-Bridge-v2.git', 
			 :tag => "#{s.version}" }
  s.social_media_url = 'https://www.instagram.com/littlstarvr/'
  s.ios.deployment_target = '9.0'
  s.source_files = 'LittlstarPlayerBridgeSDK/**/*.{h,m,swift}'
  s.public_header_files = 'LittlstarPlayerBridgeSDK/**/*.{h,m,swift}'
  s.ios.frameworks = 'UIKit', 'GLKit', 'AVKit', 'Foundation', 'AVFoundation', 'Photos', 'MobileCoreServices', 'CoreMotion'
  s.ios.vendored_frameworks = 'LittlstarPlayerBridgeSDK/LittlstarPlayerBridgeSDK.framework'
  s.dependency 'LSSDK'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }
end
