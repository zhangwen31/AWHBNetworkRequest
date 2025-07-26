Pod::Spec.new do |s|
  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  s.summary      = "AWHBNetworkRequest 网络请求组件"
  s.description  = "AWHBNetworkRequest 是一个基于 AFNetworking 封装的网络请求组件，支持常见的网络请求、数据解析和常用 UI 组件集成。"
  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "王恒" => "1066026709@qq.com" }
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"

  s.vendored_frameworks = 'AWHBNetworkRequest.framework'
  s.public_header_files = "AWHBNetworkRequest.framework/Headers/*.h"
  s.static_framework = true
  s.requires_arc = true

  s.pod_target_xcconfig = {
    "ARCHS" => "$(ARCHS_STANDARD_64_BIT)",
    "ENABLE_BITCODE" => "NO",
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0",
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.framework  = "Foundation"

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
  s.dependency "AWHBoneResources"
  s.dependency "MBProgressHUD", "~> 1.1.0"
  s.dependency "AFNetworking", "~> 4.0.1"
  s.dependency "Masonry", "~> 1.1.0"
  s.dependency "SDWebImage", "~> 5.13.3"
  s.dependency "CocoaAsyncSocket", "~> 7.6.5"
end
