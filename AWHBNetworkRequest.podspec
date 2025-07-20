Pod::Spec.new do |s|

  # 基本信息
  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  s.summary      = "基于AFNetworking的iOS网络请求框架，支持拦截、缓存和JSON解析"
  s.description  = %{
    AWHBNetworkRequest是基于AFNetworking二次封装的iOS网络框架，
    提供请求拦截器、响应缓存、JSON自动解析等功能，简化网络层代码，
    支持组件化项目集成，兼容iOS 12.0及以上系统。
  }
  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"

  # 许可证（修复）
  s.license      = { :type => "MIT", :file => "LICENSE" }  # 匹配实际文件名

  # 作者与平台
  s.author       = { "王恒" => "1066026709@qq.com" }
  s.platform     = :ios, "12.0"
  s.ios.deployment_target = "12.0"
  s.swift_version = "5.0"

  # 源码路径
  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  s.vendored_frameworks = ['AWHBNetworkRequest.framework']
  s.source_files = 'AWHBNetworkRequest.framework/Headers/*.h'
  s.static_framework = true

  # 强制所有依赖（包括YYModel）使用iOS 12.0和64位架构
  s.pod_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "12.0",
    "CLANG_ENABLE_MODULES" => "YES",
    "VALID_ARCHS" => "x86_64 arm64",  # 仅保留64位架构（模拟器和真机）
    "OTHER_LDFLAGS" => "-ObjC"  # 确保链接器正确处理类别（Category）符号
  }
  s.user_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "12.0"
  }

  # 编译配置
  s.requires_arc = true
  s.prefix_header_file = 'AWHBNetworkRequest/AWHBNetworkRequest-PrefixHeader.pch'

  # 依赖库（明确版本，修复）
  s.dependency 'AWHBoneRuntime'
  s.dependency 'AWHBoneResources'
  s.dependency 'MBProgressHUD', '~> 1.1.0'
  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'Masonry', '~> 1.1.0'
  s.dependency 'SDWebImage'
  s.dependency 'CocoaAsyncSocket', '~> 7.6.5'
  s.dependency 'YYModel', '~> 1.0.4'
end
