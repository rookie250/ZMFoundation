

Pod::Spec.new do |s|
  s.name             = 'ZMFoundation'
  s.version          = '0.1.2'
  s.summary          = '简单的工具类'

  s.description      = <<-DESC
    一个常用的工具类，包含iOS中常用的方法
                       DESC

  s.homepage         = 'https://github.com/rookie250/ZMFoundation'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mmix1009@163.com' => 'mmix1009@163.com' }
  s.source           = { :git => 'https://github.com/rookie250/ZMFoundation.git', :tag => 'v0.1.2' }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZMFoundation/Classes/**/*'

end
