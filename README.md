webmin Cookbook
================
This application cookbook installs Webmin, a web based server management application on Linux servers.

Requirements
------------
The cookbook currently only supports Ubuntu OS.  Tested on Ubuntu 12.04 and 14.04.

#### packages
- `build-essential` - Tools required for building software.


Attributes
----------

#### webmin::default

* `node[webmin][version]` - Version of Webmin to install.
* `node['webmin']['checksum']['debian_package']` - Debian package checksum.
* `node['webmin']['checksum']['rpm_package']` - Redhat package checksum.
* `node['webmin']['checksum']['source']` - Source archive checksum.
* `node['webmin']['install_from']` - Installation method: package or source.
* `node['webmin']['download_url']` - Download URL of Webmin packages.

Usage
-----
#### webmin::default
Just include `webmin` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[webmin]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sean M. Sullivan <sean@pulselocker.com>

Copyright (c) 2014, Pulselocker, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
