#
# Cookbook Name:: webmin
# Recipe:: debian
#
# Copyright 2014, Pulselocker, Inc.
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

###
# Recipe to install on Debian platforms
###
include_recipe 'apt::default'
include_recipe 'build-essential'

# Download the Debian package
remote_file "#{Chef::Config[:file_cache_path]}/webmin-#{node['webmin']['version']}_all.deb" do
  source "#{node['webmin']['download_url']}/webmin-#{node['webmin']['version']}_all.deb"
  checksum node['webmin']['checksum']['debian_package']
  action :create_if_missing
end