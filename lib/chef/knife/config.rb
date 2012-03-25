#
# Author:: Joshua Timberman <opensource@housepub.org>
# Copyright:: Copyright (c) 2012, Joshua Timberman
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/knife'

module KnifePlugins
  class Config < Chef::Knife
    banner "knife config OPTION [OPTION...] (options)\nDisplays the value of Chef::Config[OPTION]"

    option :show_all,
           :short => '-a',
           :long => '--all',
           :description => "Show all options",
           :default => false

    def run
      config_options = config[:show_all] ? Chef::Config.keys : @name_args
      ui.output format_for_display(present_options(config_options))
    end

    def present_options(data)
      h = {}
      data.each do |c|
        h[c] = Chef::Config[c.to_sym]
      end
      h
    end
  end
end
