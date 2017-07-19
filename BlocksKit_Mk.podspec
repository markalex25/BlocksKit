Pod::Spec.new do |s|
  s.name                  = 'BlocksKit_Mk'
  s.version               = '2.2.6'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://github.com/markalex25/BlocksKit'
  s.author                = { 'Zachary Waldowski' => 'zach@waldowski.me',
                              'Alexsander Akers'  => 'a2@pnd.mn' }
  s.source                = { :git => 'https://github.com/markalex25/BlocksKit.git', :tag => "v#{s.version}" }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'
  s.watchos.deployment_target = '2.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.ios.dependency 'BlocksKit_Mk/MessageUI'
    ss.ios.dependency 'BlocksKit_Mk/QuickLook'
    ss.ios.dependency 'BlocksKit_Mk/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKit_Mk/BlocksKit.h', "BlocksKit_Mk/BKDefines.h", 'BlocksKit_Mk/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKit_Mk/DynamicDelegate/*.{h,m}', 'BlocksKit_Mk/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit_Mk/BlocksKit+MessageUI.h', 'BlocksKit_Mk/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit_Mk/BlocksKit+QuickLook.h', 'BlocksKit_Mk/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'BlocksKit_Mk/Core'
    ss.dependency 'BlocksKit_Mk/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit_Mk/BlocksKit+UIKit.h', 'BlocksKit_Mk/UIKit/*.{h,m}'
  end
end
