Pod::Spec.new do |s|
  # 名称，pod search 搜索的关键词,注意这里一定要和.podspec的名称一样,否则报错
  s.name         = "AWHBNetworkRequest"
  # 版本号/库原代码的版本
  s.version      = "1.0.0"
  # 简介
  s.summary      = "基于AFNetworking的iOS网络请求框架，支持拦截、缓存和JSON解析"

  # 项目主页地址
  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  # 许可证/所采用的授权版本
  s.license      = 'MIT'
  #s.license      = { :type => "MIT", :file => "LICENSE" }
  # 库的作者
  s.author       = { "王恒" => "1066026709@qq.com" }
  # 项目的地址
  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  s.vendored_frameworks = ['AWHBNetworkRequest.framework']
  s.source_files = 'AWHBNetworkRequest.framework/Headers/*.h'
  s.static_framework = true

  # 支持的平台及版本
  s.platform     = :ios, "13.0"
  # iOS支持的pod最低版本 / iOS对应的版本
  s.ios.deployment_target = "13.0"

  # 使用了第三方静态库
  # s.ios.vendored_library = ''
  #s.ios.vendored_libraries = ''
  s.ios.vendored_frameworks = 'AWHBNetworkRequest.xcframework'

  # 是否使用ARC，如果指定具体文件，则具体的问题使用ARC
  s.requires_arc = true
  s.prefix_header_file = 'AWHBNetworkRequest/AWHBNetworkRequest-PrefixHeader.pch'

  s.swift_versions = ['5']
    
  # 依赖库（明确版本，修复）
  s.dependency 'AWHBoneRuntime'
  s.dependency 'AWHBoneResources'
  s.dependency 'MBProgressHUD'
  s.dependency 'AFNetworking'
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'YYModel'
  
end
