Pod::Spec.new do |s|

  s.name         = "AliRTCPluginOpus"
  s.version      = "1.0.1"
  s.summary      = "AliRTCPluginOpus"
  s.description  = <<-DESC
                   It's an SDK for aliyun video rtc, which implement by Objective-C.
                   DESC
  s.homepage     = "https://github.com/aliyunvideo/AliRTCPluginOpus"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "aliyunvideo" => "videosdk@service.aliyun.com"}
  s.source       = { :http =>  "https://alivc-demo-cms.alicdn.com/versionProduct/sourceCode/rtc/PluginOpus/#{s.version}/PluginOpus.library.zip" }
  # eg: https://alivc-demo-cms.alicdn.com/versionProduct/sourceCode/rtc/2.4.1/AliRTCSdk_2.4.1(iOS_Pod).zip

  s.platform            = :ios, "8.0"
  s.requires_arc        = true
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'OTHER_LDFLAGS' => 'lObjC',
  }

  s.xcconfig = {'ARCHS' => '$(ARCHS_STANDARD)'}

  s.vendored_frameworks = 'PluginOpus.framework'

  s.frameworks = 'AudioToolbox','VideoToolbox','CoreVideo','CoreMedia','OpenGLES','AVFoundation','UIKit','CoreTelephony','SystemConfiguration'

  s.libraries = 'c++','resolv'

end
