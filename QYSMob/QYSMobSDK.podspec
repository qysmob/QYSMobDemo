#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint QYSMobSDK.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
s.name             = 'QYSMobSDK'
s.version          = '1.2.0'
s.summary          = '广告插件'
s.description      = "QYSMobSDK 广告插件"
s.homepage         = 'https://github.com/qysmob/QYSMobSDK'
s.author           = { 'QYSMob' => 'qysmob@163.com' }
s.platform = :ios, '9.0'

s.source       = { :path => "./QYSMob" }
#s.source_files = ''
s.vendored_frameworks = 'QYSMobSDK.framework','ThirdSDK/YKY/*.framework'
s.resources = 'QYSBundle.bundle'

# 后续调整为读取远端压缩包 tag 为版本号
#s.source       = { :git => "https://github.com/qysmob/QYSMobSDK.git", :tag => "v#{s.version}" }

s.frameworks= 'AppTrackingTransparency','Accelerate','AddressBook','AdSupport','AssetsLibrary' , 'AudioToolbox','AVFoundation','AVKit','CoreData','CoreGraphics','CoreImage','CoreLocation','CoreMedia','CoreMotion','CoreServices','CoreTelephony','CoreText','Foundation','ImageIO','JavaScriptCore','MapKit','MediaPlayer','MessageUI','MobileCoreServices','Photos','QuartzCore','QuickLook','SafariServices','Security','StoreKit','SystemConfiguration','UIKit','WebKit'
s.libraries = 'bz2','c++','c++abi','iconv','resolv.9','resolv','sqlite3','z','xml2'

s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
s.requires_arc = true
s.pod_target_xcconfig = {  'VALID_ARCHS' => '$(ARCHS_STANDARD_64_BIT) armv7', 'ENABLE_BITCODE' => 'NO','DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

end



