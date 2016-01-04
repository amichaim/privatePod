Pod::Spec.new do |s|
  s.name         = 'PodNamePlaceHolder'
  s.version      = '8.0.0'
  s.license      = "IBM"
  s.author       = { "IBM MobileFirst platform for iOS and watchOS." => "mobilsdk@us.ibm.com" }
  s.summary      = "Use the SDK to develop applications for the Apple iPhone/iPad or Apple Watch that use the IBM MobileFirst platform for iOS/watchOS services."
  s.description  = "The IBM MobileFirst platform for iOS SDK integrates with \n                       the IBM MobileFirst platform Cloud Services. The SDK has a modular design, \n                       so you can add add services that are required by your \n                       application as needed.   \n"
  s.homepage   = "http://ibm.com"
  s.source     = {:git => 'https://hub.jazz.net/git/alon24/mfpf-sources-temp.git'}
  s.frameworks = 'SystemConfiguration','MobileCoreServices','CoreData','CoreLocation','Security'
  
  s.platforms = {
    :ios => "7.0",
    :watchos => "2.0"
  }
  
  s.ios.libraries = "stdc++.6", 'z', 'c++'
  s.watchos.libraries = 'z'
  
  s.ios.resources = 'IBMMobileFirstPlatformFoundation/Resources/mfpclient.plist'
  s.watchos.resources = 'IBMMobileFirstPlatformFoundation/Resources/mfpclient.plist'
  
  s.ios.vendored_frameworks = 'IBMMobileFirstPlatformFoundation/Frameworks/IBMMobileFirstPlatformFoundation.framework'
  
  s.watchos.vendored_frameworks = 'IBMMobileFirstPlatformFoundation/Frameworks/IBMMobileFirstPlatformFoundationWatchOS.framework'
  
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
  
end