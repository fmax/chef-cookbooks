#
# Cookbook Name:: collectd_plugins
# Recipe:: disk
#
# Copyright 2010, Atari, Inc
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
#

include_recipe "collectd"

connection_info = {:Host => node['mysql'], :User => root, :Password => node['mysql']['server_root_password'], :Port => 3306, :MasterStats => "true", :ignore_selected => true}

collectd_plugin "mysql" do
  options connection_info
end