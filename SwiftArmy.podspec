Pod::Spec.new do |s|
  s.name             = "SwiftArmy"
  s.version          = "0.1.2"
  s.summary          = "A collection of Swift extensions"
  s.description      = "A collection of Swift extensions. Helper all written in Swift"
  s.homepage         = "https://github.com/apradanas/swift-army"
  s.license          = 'MIT'
  s.author           = { "apradanas" => "adit@apradanas.com" }
  s.source           = { :git => "https://github.com/apradanas/swift-army.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/apradanas'
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.source_files     = 'swift-army/*.swift'
end
