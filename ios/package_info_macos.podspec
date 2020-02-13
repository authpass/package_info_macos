#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'package_info_macos'
  s.version          = '0.0.1'
  s.summary          = 'No-op implementation of package_info_macos desktop plugin to avoid build issues on iOS'
  s.description      = <<-DESC
temp fake url_launcher_fde plugin
                       DESC
  s.homepage         = 'https://github.com/authpass/package_info_macos'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Herbert Poul' => 'herbert.podspec@m.poul.at' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end
