#
# Be sure to run `pod lib lint TYHanZiToPinYin.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TYHanZiToPinYin'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TYHanZiToPinYin.'
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
                       DESC
                       
  s.homepage         = 'https://github.com/zhangkeqingc/TYHanZiToPinYin'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan' => 'zhangkeqinga@126.com' }
  s.source           = { :git => 'https://github.com/zhangkeqingc/TYHanZiToPinYin.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'TYHanZiToPinYin/Classes/**/*'
  

end
