#
# Be sure to run `pod lib lint SwiftArmy.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SwiftArmy"
  s.version          = "0.0.1"
  s.summary          = "A short description of SwiftArmy."
  s.description      = <<-DESC
                       An optional longer description of SwiftArmy

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/apradanas/swift-army"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "apradanas" => "adit@apradanas.com" }
  s.source           = { :git => "https://github.com/apradanas/swift-army.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/apradanas'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'swift-army/*.swift'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
