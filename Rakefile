#
# Author:: Joshua Timberman (<opensource@housepub.org>)
#
# Copyright:: 2012, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require File.dirname(__FILE__) + '/lib/knife-config'

require 'rubygems'
require 'rubygems/package_task'

GEM_NAME = 'knife-config'
spec = eval(File.read("knife-config.gemspec"))

Gem::PackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

task :install => :package do
  sh %{gem install pkg/#{GEM_NAME}-#{Knife::Config::VERSION} --no-rdoc --no-ri}
end

task :uninstall => :package do
  sh %{gem uninstall #{GEM_NAME} -x -v #{Knife::Config::VERSION}}
end
