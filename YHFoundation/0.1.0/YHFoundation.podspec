#
# Be sure to run `pod lib lint YHFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHFoundation'
  s.version          = '0.1.0'
  s.summary          = 'A short description of YHFoundation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/redye/YHFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'redye' => 'sixwalnut@qq.com' }
  s.source           = { :git => 'https://github.com/redye/YHFoundation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.dependency 'YHFoundation/YYModel'
    ss.dependency 'YHFoundation/Utility'
    ss.dependency 'YHFoundation/Addition'

    ss.source_files  = 'YHFoundation/Classes/Core/*.{h,m}'
    ss.public_header_files = 'YHFoundation/Classes/Core/*.h'
  end

  s.subspec 'Addition' do |ss|
    ss.source_files  = 'YHFoundation/Classes/Addition/*.{h,m}'
    ss.public_header_files = 'YHFoundation/Classes/Addition/*.h'
  end

  s.subspec 'Utility' do |ss|
    ss.dependency 'YHFoundation/YYModel'
    ss.source_files  = 'YHFoundation/Classes/Utility/*.{h,m}'
    ss.public_header_files = 'YHFoundation/Classes/Utility/*.h'
  end

  s.subspec 'YYModel' do |ss|
    ss.source_files  = 'YHFoundation/Classes/YYModel/*.{h,m}'
    ss.public_header_files = 'YHFoundation/Classes/YYModel/*.h'
    ss.dependency 'YYModel'
  end

  
  # s.resource_bundles = {
  #   'YHFoundation' => ['YHFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
