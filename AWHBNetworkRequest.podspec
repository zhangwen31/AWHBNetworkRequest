Pod::Spec.new do |s|

  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  s.summary      = "A short description of AWHBNetworkRequest."
  s.description  = %{
  TODO: 添加描述内容
  }

  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "王恒" => "1066026709@qq.com" }
  s.platform = :ios, "13.0"
  s.ios.deployment_target = "13.0"
  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  s.vendored_frameworks = ['AWHBNetworkRequest.framework']
  s.pod_target_xcconfig = {'VALID_ARCHS' => 'x86_64 armv7 arm64'}
  s.source_files = "AWHBNetworkRequest.framework/Headers/*.h"  # 确保Headers目录存在且包含.h文件
  s.public_header_files = "AWHBNetworkRequest.framework/Headers/*.h"  # 公开头文件
  s.static_framework = true
  s.framework  = "Foundation"
  s.requires_arc = true
   # 公共头文件导进组件.pch文件中,加入后，执行pod install, MXStatService-prefix.pch 文件中就有这些头文件
   s.prefix_header_contents = <<-EOS
   #import <AWHBoneRuntime/AWHBoneRuntime.h>
   #import <MBProgressHUD/MBProgressHUD.h>
   #import <Masonry/Masonry.h>
   #import <AFNetworking/AFNetworking.h>
   #import <YYModel/YYModel.h>
   #import <AWHBoneResources/AWHBoneResources.h>
   #import <SDWebImage/SDWebImage.h>
   
   #ifndef __OPTIMIZE__
   #define AWHBNRDebugLog(s, ...) NSLog(@"%s(%d): %@", __FUNCTION__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
   #else
   #define AWHBNRDebugLog(...)
   #endif
   
   EOS
   
  s.dependency "AWHBoneRuntime"
  s.dependency "MBProgressHUD"
  s.dependency "AFNetworking"
  s.dependency "Masonry"
  s.dependency "SDWebImage"
  s.dependency "CocoaAsyncSocket"
  s.dependency "AWHBoneResources"

end
