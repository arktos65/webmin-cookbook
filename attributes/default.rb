#
# Cookbook Name:: webmin
# Recipe:: default
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

default['webmin']['version'] = '1.710'
default['webmin']['checksum']['debian_package'] = 'c6957d2fee9028a63ff4e31adfe1e9bc'
default['webmin']['checksum']['rpm_package'] = '8146819ba1c55b20be9ec277ac6a1e9a'
default['webmin']['checksum']['source'] = 'cf270b18644884b1c791ba963d9a630d'

# Install from either: source or package
default['webmin']['install_from'] = 'package'
default['webmin']['download_url'] = 'http://prdownloads.sourceforge.net/webadmin/'