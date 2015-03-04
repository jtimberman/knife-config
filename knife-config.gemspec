require File.dirname(__FILE__) + '/lib/knife-config'
Gem::Specification.new do |s|
  s.name = 'knife-config'
  s.version = Knife::Config::VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.summary = "Displays the value of Chef::Config[OPTION]"
  s.description = s.summary + "Can report from the loaded knife configuration or specified config file"
  s.author = "Joshua Timberman"
  s.email = "opensource@housepub.org"
  s.homepage = "http://github.com/jtimberman/knife-config"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md) + Dir.glob("lib/**/*")
end
