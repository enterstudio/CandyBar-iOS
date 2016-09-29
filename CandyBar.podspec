#
# Be sure to run `pod lib lint CandyBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CandyBar'
  s.version          = '1.0.1'
  s.summary          = 'Simple notification framework that displays an Icon, Title, and Subtitle.'
  s.description      = <<-DESC
CandyBar is an alternative notification view. A CandyBar includes an easily customizable icon image, and title and subtitle text. There are 11 Candy Icons provided within the framework, but you could also use a custom own image.
                       DESC

  s.homepage         = 'https://github.com/DopamineLabs/CandyBar-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Akash Desai' => 'team@usedopamine.com' }
  s.source           = { :git => 'https://github.com/DopamineLabs/CandyBar-iOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/usedopamine'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/**/*'
  
  s.resource_bundles = {
    'CandyIcons' => ['Resources/CandyIcons.xcassets']
  }

end
