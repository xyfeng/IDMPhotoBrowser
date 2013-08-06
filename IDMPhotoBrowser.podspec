Pod::Spec.new do |s|
  s.name         = "IDMPhotoBrowser"
  s.version      = "1.0.2"
  s.summary      = "IDMPhotoBrowser."
  s.homepage     = "https://github.com/appkraft/IDMPhotoBrowser"

  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Appkraft" => "all@appkraft.net" }
  s.source       = { 
    :git => "https://github.com/appkraft/IDMPhotoBrowser.git", 
    :tag => "1.0.2"
  }

  s.platform     = :ios, '5.0'
  
  s.source_files = 'Classes/*.{h,m}'
  s.resources = 'Classes/IDMPhotoBrowser.bundle'
  
  s.dependency 'AFNetworking', '~> 1.3.1'
  s.dependency 'DACircularProgress', '~> 2.1.0'
  s.dependency 'SVProgressHUD', '~> 0.9'

  s.requires_arc = true

  s.ios.deployment_target = '5.0'
  s.ios.frameworks = 'MobileCoreServices', 'SystemConfiguration'

  s.prefix_header_contents = <<-EOS
#import <Availability.h>

#if __IPHONE_OS_VERSION_MIN_REQUIRED
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <MobileCoreServices/MobileCoreServices.h>
#else
  #import <SystemConfiguration/SystemConfiguration.h>
  #import <CoreServices/CoreServices.h>
#endif

end