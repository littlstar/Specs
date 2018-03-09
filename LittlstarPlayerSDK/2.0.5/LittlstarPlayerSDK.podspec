Pod::Spec.new do |s|
  s.name             = 'LittlstarPlayerSDK'
  s.version          = '2.0.5'
  s.summary          = 'LittlstarPlayerSDK containing components for panorama video'
  s.homepage         = 'https://littlstar.com/'
  s.license          = { 
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2017 Littlstar. All rights reserved.
      LICENSE
  }
  s.author           = { 'Littlstar dev. team' => 'dev@littlstar.com' }
  s.source           = { :git => 'git@github.com:littlstar/LittlstarPlayerSDK.git', 
			 :tag => "#{s.version}" }
  s.social_media_url = 'https://www.instagram.com/littlstarvr/'
  s.ios.deployment_target = '9.0'

  s.source_files = 'LittlstarPlayerSDK/**/*.{h,m,swift}'
  s.public_header_files = 'LittlstarPlayerSDK/**/*.{h,m,swift}'
  s.ios.frameworks = 'UIKit', 'GLKit', 'AVKit', 'Foundation', 'AVFoundation', 'Photos', 'MobileCoreServices', 'CoreMotion'
  s.ios.vendored_frameworks = 'LittlstarPlayerSDK/LittlstarPlayerSDK.framework'

  def s.post_install(installer)
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        xcconfig_path = config.base_configuration_reference.real_path
        xcconfig = File.read(xcconfig_path)
        xcconfig = xcconfig.gsub(/ -l"GVRSDK"/, '')
        xcconfig = xcconfig.gsub(/ -framework "GTMSessionFetcher"/, '')
        xcconfig = xcconfig.gsub(/ -framework "GVRKit"/, '')
        xcconfig = xcconfig.gsub(/ -framework "GoogleToolboxForMac"/, '')
        File.open(xcconfig_path, "w") { |file| file << xcconfig }
      end
    end
  end

end
