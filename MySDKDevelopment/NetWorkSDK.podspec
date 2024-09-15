Pod::Spec.new do |spec|
  spec.name         = "NetWorkSDK"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of NetWorkSDK."
  spec.description  = "This is a best Pod to API integration"
  spec.homepage     = ""
  spec.license      = "MIT (example)"
  spec.author             = { "Kamalesh" => "kamalesh@zed.digital" }
  spec.source       = { :git => "http://EXAMPLE/NetWorkSDK.git", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
end
