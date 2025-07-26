Pod::Spec.new do |s|

  # ――― 基本信息 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  # 修复：摘要需明确功能（避免默认占位符）
  s.summary      = "基于AFNetworking的iOS网络请求框架，支持拦截、缓存与JSON解析"

  # 修复：补充详细描述（比摘要更具体）
  s.description  = %{
    AWHBNetworkRequest是一个iOS静态网络框架，基于AFNetworking二次封装，
    提供请求拦截器、响应缓存、JSON自动解析等功能，简化网络层代码。
    支持组件化项目集成，兼容iOS 13.0及以上系统。
  }

  # 确保仓库可访问
  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  # 可选：添加截图（如果有）
  # s.screenshots  = "https://github.com/zhangwen31/AWHBNetworkRequest/raw/main/screenshot.png"


  # ――― 许可证（核心修复） ――――――――――――――――――――――――――――――――――――――――― #
  # 修复：指定许可证类型和文件（需在仓库根目录创建LICENSE文件）
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― 作者与平台 ――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author       = { "王恒" => "1066026709@qq.com" }
  # 平台与部署目标（iOS 13.0及以上，移除32位支持）
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"


  # ――― 编译配置（核心修复） ―――――――――――――――――――――――――――――――――――― #
 s.pod_target_xcconfig = {
    # 强制部署目标匹配（iOS 13.0）
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0",
    # 仅保留x86_64（模拟器）和arm64（真机）
    "VALID_ARCHS" => "x86_64 arm64",
    "ARCHS" => "$(ARCHS_STANDARD_64_BIT)",
    # 强制静态链接（关键：避免动态库处理）
    "MACH_O_TYPE" => "staticlib",
    # 禁用模块自动链接（防止动态依赖）
    "CLANG_MODULES_AUTOLINK" => "NO",
    # 确保使用最新SDK
    "SDKROOT" => "iphoneos"
}
  s.user_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0"  # 强制用户项目兼容13.0
  }


  # ――― 源码与框架路径 ―――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  # 静态框架路径（确保仓库中存在此框架）
  s.vendored_frameworks = ['AWHBNetworkRequest.framework']
  # 头文件路径（修复通配符，确保正确识别.h文件）
  s.source_files = "AWHBNetworkRequest.framework/Headers/*.h"
  # 声明为静态框架
  s.static_framework = true


  # ――― 编译配置 ―――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true  # 支持ARC

  # 前缀头文件（按需保留，确保导入的头文件存在）
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


  # ――― 依赖库（锁定版本，避免兼容问题） ―――――――――――――――――――――――― #
  # 修复：指定具体版本范围，确保与框架内部使用版本一致
  s.dependency "AWHBoneRuntime"        # 替换为实际存在的版本
  s.dependency "AWHBoneResources"     # 替换为实际存在的版本
  s.dependency "MBProgressHUD", "~> 1.1.0"         # 稳定版本
  s.dependency "AFNetworking", "~> 4.0.1"          # 兼容iOS 10+
  s.dependency "Masonry", "~> 1.1.0"               # 静态兼容
  s.dependency "SDWebImage", "~> 5.1.1"           # 支持iOS 12+
  s.dependency "CocoaAsyncSocket", "~> 7.6.5"      # 稳定版本
  s.dependency "YYModel", "~> 1.0.4"               # 修复部署目标问题
end
