Pod::Spec.new do |s|
  s.name             = "SwiftArmy"
  s.version          = "0.0.1"
  s.summary          = "A short description of SwiftArmy."
  s.description      = "Helper written in Swift"
  s.homepage         = "https://github.com/apradanas/swift-army"
  s.license          = 'MIT'
  s.author           = { "apradanas" => "adit@apradanas.com" }
  s.source           = { :git => "https://github.com/apradanas/swift-army.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/apradanas'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'swift-army/*.swift'
end
