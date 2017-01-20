#
# Be sure to run `pod lib lint Cyhz_Component_Support.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Cyhz_Component_Support'
  s.version          = '0.4.2'
  s.summary          = '是车源汇众公司在ios sdk 包装的工具类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                         是车源汇众公司在ios sdk 包装的工具类，是其他模块的机场。
                       DESC
  # s.prepare_command = <<-CMD
#                         find Pods -regex 'Pods/pop.*\\.h' -print0 | xargs -0 sed -i '' 's/\\(<\\)pop\\/\\(.*\\)\\(>\\)/\\"\\2\\"/'
#                        CMD
  s.homepage         = 'https://github.com/liuxiaolong-nm/cyhz_ios_component_support'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuxiaolong' => 'liuxl@cyhz.com' }
  s.source           = { :git => 'https://github.com/liuxiaolong-nm/cyhz_ios_component_support.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '7.0'
  s.frameworks = 'UIKit', 'MapKit','Foundation','SystemConfiguration'
  s.source_files = 'Cyhz_Component_Support/Classes/*'
  s.public_header_files = 'Cyhz_Component_Support/Classes/*.h'

  s.subspec 'vc' do |ss|
       ss.source_files = 'Cyhz_Component_Support/Classes/vc/**/*'
       ss.public_header_files = 'Cyhz_Component_Support/Classes/vc/**/*.h'
       ss.resources = 'Cyhz_Component_Support/Classes/vc/cropimgvc/PEPhotoCropEditor.bundle'
   end
   
  s.subspec 'util' do |ss|
       ss.source_files = 'Cyhz_Component_Support/Classes/util/*'
       ss.public_header_files = 'Cyhz_Component_Support/Classes/util/*.h'
   end
   
   s.subspec 'save' do |ss|
       ss.source_files = 'Cyhz_Component_Support/Classes/save/**/*.{h,m}'
       ss.public_header_files = 'Cyhz_Component_Support/Classes/save/**/*.h'
       ss.dependency 'Cyhz_Component_Support/util'
   end
   
  s.subspec 'popview' do |ss|
        ss.source_files = 'Cyhz_Component_Support/Classes/popview/**/*'
        ss.public_header_files = 'Cyhz_Component_Support/Classes/popview/**/*.h'
  end
   
 s.subspec 'net' do |ss|
       ss.source_files = 'Cyhz_Component_Support/Classes/net/**/*'
       ss.public_header_files = 'Cyhz_Component_Support/Classes/net/**/*.h'
       ss.dependency 'Cyhz_Component_Support/popview'
   end
  # s.resource_bundles = {
  #   'Cyhz_Component_Support' => ['Cyhz_Component_Support/Assets/*.png']
  # }

 s.dependency 'AFNetworking', '= 3.1.0'
 s.dependency 'MBProgressHUD', '= 0.9.1'
 s.dependency 'Realm', '= 1.1.0'

end
