Pod::Spec.new do |s|
  # 1. 基础信息
  s.name         = "AWHBNetworkRequest"  # 框架名称（需与GitHub仓库名一致）
  s.version      = "1.0.0"               # 版本号（需与Git Tag一致）
  s.summary      = "基于AFNetworking的静态网络框架"
  s.description  = <<-DESC
                    一个静态编译的iOS网络请求框架，基于AFNetworking封装，
                    支持请求拦截、缓存和JSON解析，兼容iOS 12.0及以上系统。
                   DESC
  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"  # GitHub仓库地址
  s.license      = { :type => "MIT", :file => "LICENSE" }  # 许可证（需仓库根目录有LICENSE文件）
  s.author       = { "王恒" => "1066026709@qq.com" }       # 作者信息


  # 2. 平台与版本支持
  s.platform     = :ios, "12.0"           # 最低支持iOS版本（静态框架建议≥12.0）
  s.ios.deployment_target = "12.0"
  s.swift_version = "5.0"                 # 若含Swift代码，指定Swift版本


  # 3. 源码与框架路径（核心配置）
  s.source       = {
    :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git",  # GitHub仓库地址
    :tag => "#{s.version}"  # 绑定Git Tag（必须与s.version一致）
  }
  s.vendored_frameworks = "AWHBNetworkRequest.framework"  # 静态框架文件路径（仓库中实际存放的框架）
  s.source_files = "AWHBNetworkRequest.framework/Headers/*.h"  # 暴露的头文件（供外部调用）
  s.static_framework = true  # 声明为静态框架（关键）


  # 4. 编译配置（解决静态框架兼容性问题）
  s.pod_target_xcconfig = {
    # 强制静态链接（避免与动态库冲突）
    "MACH_O_TYPE" => "staticlib",
    # 禁用bitcode（静态框架通常不支持bitcode，按需开启）
    "ENABLE_BITCODE" => "NO",
    # 指定架构（iOS 12+仅支持64位）
    "VALID_ARCHS" => "x86_64 arm64",
    # 关闭动态库相关配置
    "CLANG_MODULES_AUTOLINK" => "NO"
  }
  s.user_target_xcconfig = {
    "VALID_ARCHS" => "x86_64 arm64"  # 确保用户项目架构兼容
  }


  # 5. 依赖库（静态框架依赖的其他库）
  s.dependency "AFNetworking", "~> 4.0"       # 依赖的第三方库（需与框架内部使用版本一致）
  s.dependency "YYModel", "~> 1.0.5"          # 确保依赖库也支持静态链接
  s.dependency "Masonry", "~> 1.1.0"
end
