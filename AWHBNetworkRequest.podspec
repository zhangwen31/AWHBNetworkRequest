#
#  Be sure to run `pod spec lint AWHBNetworkRequest.podspec' to ensure this is a
#  确保运行“pod spec lint AWHBNetworkRequest.podspec”以确保这是一个
#  valid spec and to remove all comments including this before submitting the spec.
#  有效规范，并在提交规范之前删除所有注释，包括此注释
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  要了解有关Podspec属性的更多信息，请参阅https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#  要查看CocoaPods回购协议中的工作PodSpec，请参阅https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata 规范元数据 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  这些将帮助人们找到你的图书馆，同时
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  你会觉得这是一件苦差事，这绝对对你有利。这个
  #  summary should be tweet-length, and the description more in depth.
  #  摘要应该是tweet的长度，并且描述更深入。
  #

  # ――― 基本信息 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AWHBNetworkRequest"
  s.version      = "1.0.0"
  # 修复：摘要需明确功能（避免无意义描述）
  s.summary      = "基于AFNetworking的iOS网络请求框架，支持拦截、缓存和JSON解析"
  
  # This description is used to generate tags and improve search results.
  # 此说明用于生成标记和改进搜索结果。
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * 思考：它做什么？你为什么写它？重点是什么？
  #   * Try to keep it short, snappy and to the point.
  #   * 尽量保持简短、活泼、切中要害。
  #   * Write the description between the DESC delimiters below.
  #   * 在下面的描述分隔符之间写入说明。
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  #   * 最后，不要担心缩进，CocoaPods会剥去它！

  # 修复：描述保持简洁且比摘要详细
  s.description  = %{
    AWHBNetworkRequest是基于AFNetworking二次封装的iOS网络框架，
    提供请求拦截器、响应缓存、JSON自动解析等功能，简化网络层代码，
    支持组件化项目集成，兼容iOS 13.0及以上系统。
  }

  s.homepage     = "https://github.com/zhangwen31/AWHBNetworkRequest"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # ――― 许可证 ――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 修复：指定实际存在的LICENSE文件（项目根目录需创建LICENSE文件）
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  作者元数据―――――――――――――――――――――――――――――― #
  #
  #  sify the authors of the library, with email addresses. Email addresses
  #  用电子邮件地址筛选图书馆的作者。电子邮件地址
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  作者的姓名从SCM日志中提取。例如$git log。椰子荚也有
  #  accepts just a name if you'd rather not provide an email address.
  #  如果您不想提供电子邮件地址，只接受一个名称。
  #
  #  sify a social_media_url where others can refer to, for example a twitter
  #  筛选其他人可以引用的社交媒体url，例如twitter
  #  profile URL.
  #  #配置文件URL
  #

  s.author             = { "王恒" => "1066026709@qq.com" }
  # Or just: s.author    = "王恒"
  # s.authors            = { "王恒" => "1066026709@qq.com" }
  # s.social_media_url   = "https://twitter.com/王恒"

  # ――― Platform sifics 平台sifics――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then sify the platform and
  #  如果此Pod仅在iOS或OSX上运行，请筛选平台并
  #  the deployment target. You can optionally include the target after the platform.
  #  部署目标。您可以选择在平台之后包含目标。
  #

  # 基础部署目标设置
  s.platform = :ios, "13.0"
  s.swift_version = "5.0"  # 若使用Swift，指定对应版本

  #  When using multiple platforms
  s.ios.deployment_target = "13.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location 源位置――――――――――――――――――――――――――――――― #
  #
  #  sify the location from where the source should be retrieved.
  #  筛选应检索源的位置
  #  Supports git, hg, bzr, svn and HTTP.
  #  #支持git、hg、bzr、svn和HTTP。
  #

  s.source       = { :git => "https://github.com/zhangwen31/AWHBNetworkRequest.git", :tag => "#{s.version}" }
  
  # ――― Source Code 源代码――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  CocoaPods在如何包含源代码方面很聪明。对于源文件
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  提供一个文件夹将包括任何swift、h、m、mm、c和cpp文件。
  #  For header files it will include any header in the folder.
  #  对于头文件，它将包括文件夹中的任何头文件。
  #  Not including the public_header_files will make all headers public.
  #  不包括公共头文件将使所有头文件公开。
  #

  #  s.source_files  = "AWHBNetworkRequest/*.{h,m,swift}"
  #  # s.exclude_files = "Classes/Exclude"   #排除文件
  #
  #  s.public_header_files = "AWHBNetworkRequest/*.h"


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
