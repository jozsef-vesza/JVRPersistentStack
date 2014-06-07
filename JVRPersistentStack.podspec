Pod::Spec.new do |s|
  s.name         = "JVRPersistentStack"
  s.version      = "1.0.1"
  s.summary      = "An easy-to-use persistent stack class for apps using Core Data"
  s.homepage     = "https://github.com/jozsef-vesza/JVRPersistentStack"
  s.license      = "MIT"
  s.author             = { "József Vesza" => "jozsef.vesza@outlook.com" }
  s.social_media_url   = "http://twitter.com/j_vesza"
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/jozsef-vesza/JVRPersistentStack.git", :tag => s.version }
  s.source_files  = "*.{h,m}"
  s.public_header_files = "*.h"
  s.framework  = "CoreData"
  s.requires_arc = true
end
