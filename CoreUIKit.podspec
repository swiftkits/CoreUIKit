Pod::Spec.new do |spec|
  spec.name          = 'CoreUIKit'
  spec.version       = '0.1.0'
  spec.license       = { :type => 'MIT' }
  spec.homepage      = 'https://github.com/0vertex/CoreUIKit'
  spec.authors       = 'Manish'
  spec.summary       = 'CoreUIKit provides functional and easy to use extensions on top of UIKit.'
  spec.source        = { :git => 'https://github.com/0vertex/CoreUIKit.git', :tag => spec.version }
  spec.module_name   = 'CoreUIKit'
  spec.swift_version = '5.0'

  spec.ios.deployment_target  = '11.0'

  spec.source_files   = 'Sources/**/*.swift'
end