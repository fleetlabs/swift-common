#
# Be sure to run `pod lib lint AppBaseLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AppBaseLib"
  s.version          = "0.1.0"
  s.license          = 'MIT'
  s.summary          = "A short description of AppBaseLib."
  s.description      = <<-DESC
                        A short description of AppBaseLib.
                       DESC

  s.homepage         = "https://github.com/fleetlabs/swift-common"
  s.license          = 'MIT'
  s.author           = { "Jesse Xu" => "jessexu@augmentum.com.cn" }
  s.source           = { :git => "https://github.com/fleetlabs/swift-common.git", :tag => s.version }

  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'Source/**/*.swift'
#s.resources        = 'Source/Resources/*.png'
  s.frameworks       = 'UIKit', 'Foundation'
#s.xcconfig         = { 'OTHER_LDFLAGS' => '-Objc' }
#s.dependency 'Alamofire', '~> 3.4'
end
