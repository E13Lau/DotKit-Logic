Pod::Spec.new do |spec|
  spec.name           = 'DotKit+Logic'
  spec.version        = '0.0.1'
  spec.summary        = 'DotKit+Logic'
  spec.homepage       = 'https://github.com/E13Lau/DotKit-Logic'
  spec.license        = 'MIT'
  spec.author         = 'e13lau'
  spec.module_name    = 'DotKit_Logic'
  spec.source         = { :git => 'https://github.com/E13Lau/DotKit-Logic.git', :tag => '0.0.1' }
  spec.source_files   = 'Sources/DotKit+Logic/**/*.swift'
  spec.swift_version  = '5.0'

  spec.ios.deployment_target = '10.0'
  
  spec.dependency 'DotKit', '~> 0.0.3'
end
