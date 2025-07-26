Pod::Spec.new do |s|
  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  s.summary      = "AWHBNetworkRequest 是一个基于 AFNetworking 的 iOS 网络请求库。"
  s.description  = "AWHBNetworkRequest 支持链式调用、自动解析、常用 UI 组件集成，并提供便捷的接口封装，提升项目网络层开发效率。"
  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "王恒" => "1066026709@qq.com" }
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"
  s.vendored_frameworks = 'AWHBNetworkRequest.xcframework'
  s.static_framework = true
  s.pod_target_xcconfig = {
    "ARCHS" => "$(ARCHS_STANDARD_64_BIT)",
    "ENABLE_BITCODE" => "NO",
    "IPHONEOS_DEPLOYMENT_TARGET" => "13.0",
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }
  s.framework = "Foundation"
  s.requires_arc = true

  # 依赖库
  s.dependency "AWHBoneRuntime"
  s.dependency "AWHBoneResources"
  s.dependency "MBProgressHUD", "~> 1.1.0"
  s.dependency "AFNetworking", "~> 4.0.1"
  s.dependency "Masonry", "~> 1.1.0"
  s.dependency "SDWebImage", "~> 5.13.3"
  s.dependency "CocoaAsyncSocket", "~> 7.6.5"
end
