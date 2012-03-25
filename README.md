This gem provides a knife plugin to display the specified
`Chef::Config` options, or optionally display all `Chef::Config`
options. It can use the configuration loaded automatically by knife,
or a specified config file.

Usage
=====

Basic usage, specify a single configuration option from
`Chef::Config`. The plugin will load the default knife configuration
file it automatically detects.

```
% cd ~/chef-repo
% knife config chef_server_url
chef_server_url:  https://api.opscode.com/organizations/MY_ORG
```

Specify multiple configuration options from `Chef::Config`.

```
% cd ~/chef-repo
% knife config chef_server_url node_name validation_client_name
chef_server_url:  https://api.opscode.com/organizations/MY_ORG
node_name:        jtimberman
validation_client_name:  housepub-validator
```

Show all the `Chef::Config` options available with the `--all` option.
This will display default values for anything not otherwise specified
in the configuration.

```
% cd ~/chef-repo
% knife config --all
amqp_consumer_id:               default
amqp_host:                      0.0.0.0
amqp_pass:                      testing
amqp_port:                      5672
amqp_user:                      chef
amqp_vhost:                     /chef
authorized_openid_identifiers:  
authorized_openid_providers:    
cache_options:                 
  path:  /Users/jtimberman/.chef/checksums
cache_type:                     BasicFile
checksum_path:                  /var/chef/checksums
chef_server_url:                https://api.opscode.com/organizations/housepub
client_key:                     /Users/jtimberman/.chef/jtimberman.pem
client_registration_retries:    5
client_url:                     http://localhost:4042
[output truncated]
```

Show configuration values from an alternative configuration file using
the `-c` option.

```
% knife config node_name -c /etc/chef/client.rb
node_name:  macbook-air.int.example.com
```

Roadmap
=======

* Display differences between the default `Chef::Config` and the
  specified configuration file.

License and Author
==================

Author:: Joshua Timberman <opensource@housepub.org>

Copyright:: 2012, Joshua Timberman

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
