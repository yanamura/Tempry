# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "Tempry"
  s.version      = "0.1.1"
  s.summary      = "get a random temporary directory path"
  s.homepage     = "https://github.com/yanamura/Tempry"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Yasuharu Yanamura" => "yanamura3@gmail.com" }
  s.source       = { :git => "https://github.com/yanamura/Tempry.git", :tag => "#{s.version}" }
  s.source_files = "Sources/Tempry/*"
  s.platform     = :ios, '10.0'
end
