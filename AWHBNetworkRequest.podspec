
Pod::Spec.new do |s|

  # ――― 基本信息 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  # 修复：摘要需明确功能（避免无意义描述）
  s.summary      = "基于AFNetworking的iOS网络请求框架，支持拦截、缓存和JSON解析"

  # 修复：描述保持简洁且比摘要详细
  s.description  = %{
    AWHBNetworkRequest是基于AFNetworking二次封装的iOS网络框架，
    提供请求拦截器、响应缓存、JSON自动解析等功能，简化网络层代码，
    支持组件化项目集成，兼容iOS 13.0及以上系统。
  }

  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  # ――― 许可证 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 修复：指定实际存在的LICENSE文件（项目根目录需创建LICENSE文件）
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "王恒" => "1066026709@qq.com" }
  
  # 基础部署目标设置
  s.platform = :ios, "13.0"
  s.swift_version = "5.0"  # 若使用Swift，指定对应版本
  s.ios.deployment_target = "13.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  # ――― 源码与框架路径 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  s.vendored_frameworks = ['AWHBNetworkRequest.framework']  # 确保框架路径正确
  s.source_files = 'AWHBNetworkRequest.framework/Headers/*.h'  # 修复通配符（*h → *.h）
  s.static_framework = true  # 若为静态框架，保持此设置


  # ――― 部署目标强制兼容（核心修复） ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 强制所有依赖库使用iOS 13.0，解决libarclite缺失问题
  s.pod_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0",
    "CLANG_ENABLE_MODULES" => "YES",
    "VALID_ARCHS" => "x86_64 arm64"  # 移除armv7（iOS 13+已不支持32位架构）
  }
  s.user_target_xcconfig = {
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0"
  }


  # ――― 前缀头文件与编译配置 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  # 公共头文件导进组件.pch文件中,加入后，执行pod install, MXStatService-prefix.pch 文件中就有这些头文件
  s.prefix_header_file = 'AWHBNetworkRequest/AWHBNetworkRequest-PrefixHeader.pch'


  # ――― 依赖库（指定明确版本，避免兼容问题） ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 修复：指定具体版本（与实际存在的版本匹配，避免部署目标冲突）
  s.dependency "AWHBoneRuntime"       # 匹配实际存在的版本
  s.dependency "AWHBoneResources"    # 匹配实际存在的版本
  s.dependency "MBProgressHUD", "~> 1.1.0"        # 支持iOS 9.0+，兼容13.0
  s.dependency "AFNetworking", "~> 4.0.1"         # 支持iOS 10.0+，兼容13.0
  s.dependency "Masonry", "~> 1.1.0"              # 支持iOS 10.0+，兼容13.0
  s.dependency "SDWebImage"          # 明确支持iOS 12.0+，兼容13.0
  s.dependency "CocoaAsyncSocket", "~> 7.6.5"     # 支持iOS 9.0+，兼容13.0
  s.dependency "YYModel", "~> 1.0.4"              # 1.0.5修复了部署目标问题，支持iOS 8.0+（通过xcconfig强制提升到13.0）

end
