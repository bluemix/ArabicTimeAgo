#
# Be sure to run `pod lib lint ArabicTimeAgo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ArabicTimeAgo'
  s.version          = '0.1.0'
  s.summary          = 'Arabic and English time ago in Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "2017-01-19 09:12:07 to '12 hours ago' or 'قبل 13 ساعة'"

  s.homepage         = 'https://github.com/bluemix/ArabicTimeAgo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abdulmomen Kadum عبدالمؤمن كاظم' => 'a.bluemix@gmail.com' }
  s.source           = { :git => 'https://github.com/bluemix/ArabicTimeAgo.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/bluemix2'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ArabicTimeAgo/Classes/**/*'

  # s.resource_bundles = {
  #   'ArabicTimeAgo' => ['ArabicTimeAgo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
