Pod::Spec.new do |s|
  s.name             = 'QSColor'
  s.version          = '0.0.1'
  s.summary          = 'Uitilities for manage colors'
  s.description      = <<-DESC
QSColor is an utilities to manage colors using color set an provide some inspectable for use it simply in IB.
@see README.md to have more details.
                       DESC

  s.homepage         = 'https://github.com/QualiaSystemes/QSColor'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Qualia Systemes' => 'technique@qualia.fr' }
  s.source           = { :git => 'https://github.com/QualiaSystemes/QSColor.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'QSColor/Classes/**/*'

  s.frameworks = 'UIKit'
  s.module_name = 'QSColor'
end
