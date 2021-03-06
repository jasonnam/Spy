Pod::Spec.new do |s|
  s.name         = 'Spy'
  s.version      = '0.1.0'
  s.summary      = 'Spy'
  s.description  = <<-DESC
                   Spy
                   DESC
  s.homepage     = 'https://github.com/jasonnam/Spy'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'jasonnam' => 'contact@jasonnam.com' }

  s.ios.deployment_target = '10.0'

  s.source       = { :path => '.' }
  s.source_files = 'Sources/Spy/**/*.{swift}'
end
