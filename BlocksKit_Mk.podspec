Pod::Spec.new do |s|
  s.name                  = 'BlocksKit_Mk'
  s.version               = '2.2.11'
  s.ios.deployment_target = '6.0'
  #s.osx.deployment_target = '10.8'
  #s.watchos.deployment_target = '2.0'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://github.com/markalex25/BlocksKit'
  s.license               = 'MIT'
  s.author                = { 'Markalex25' => 'markalex25@163.com'}
  s.social_media_url      = "http://weibo.com/markalex25"
  s.source                = { :git => 'https://github.com/markalex25/BlocksKit.git', :tag => "v#{s.version}" }
  s.source_files          = "BlocksKit"
  s.requires_arc          = true

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.ios.dependency 'BlocksKit_Mk/MessageUI'
    ss.ios.dependency 'BlocksKit_Mk/QuickLook'
    ss.ios.dependency 'BlocksKit_Mk/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKit_Mk/BlocksKit.h', "BlocksKit/BKDefines.h", 'BlocksKit/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.source_files = 'BlocksKit/DynamicDelegate/*.{h,m}', 'BlocksKit/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+MessageUI.h', 'BlocksKit/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+QuickLook.h', 'BlocksKit/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+UIKit.h', 'BlocksKit/UIKit/*.{h,m}'
  end

end
