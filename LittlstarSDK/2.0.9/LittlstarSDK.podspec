Pod::Spec.new do |s|
  s.name = 'LittlstarSDK'
  s.version = '2.0.9'
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2016 Littlstar. All rights reserved.
      LICENSE
  }
  s.summary = 'LittlstarSDK_iOS containing components for panorama video'
  s.homepage = 'https://github.com/littlstar/littlstar-ios-sdk'
  s.author = { 'Littlstar dev. team' => 'dev@littlstar.com' }
  s.platform = :ios
  s.source = { :git => 'git@github.com:littlstar/littlstar-ios-sdk.git', :tag => "#{s.version}" }
  s.source_files = 'LittlstarSDK/Headers/*.h'
  s.preserve_paths = 'LittlstarSDK/libLittlstarSDK.a'
  s.vendored_libraries = 'LittlstarSDK/libLittlstarSDK.a'
  s.frameworks = 'UIKit', 'Foundation', 'CoreMotion', 'OpenAL', 'AudioToolbox'
  s.requires_arc = true
  s.library = 'stdc++'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/LittlstarSDK"', 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/LittlstarSDK"' }
end
