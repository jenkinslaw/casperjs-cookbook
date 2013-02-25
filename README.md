casperjs Cookbook
=================
This Chef cookbook will install the precompiled casperjs binary. 

Tested on centos 6.3 and ubuntu 12.10

Requirements
------------

## Platform
Tested on centos 6.3 and ubuntu 12.10


## Cookbooks

phantomjs - we used this [phantomjs cookbook](https://github.com/jenkinslaw/phantomjs) but others exist.  


Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['casperjs']['version']</tt></td>
    <td>String</td>
    <td>Versino of casperjs to install</td>
    <td><tt>1.0.2</tt></td>
  </tr>
  <tr>
    <td><tt>['casperjs']['install_method']</tt></td>
    <td>String</td>
    <td>Choose from the different installation recipes included.</td>
    <td><tt>package</tt></td>
  </tr>
  <tr>
    <td><tt>['casperjs']['git']['source_dir']</tt></td>
    <td>String</td>
    <tdThe root folder for cloning the CasperJs Git Repository.</td>
    <td><tt>/usr/local/src</tt></td>
  </tr>
    <td><tt>['casperjs']['git']['source_url']</tt></td>
    <td>String</td>
    <tdThe URL for the CasperJs Git repository.</td>
    <td><tt>https://github.com/n1k0/casperjs.git</tt></td>
  </tr>
</table>

Usage
-----

Just include `casperjs` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[casperjs]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author:: Chad Nelson
Contributor(s):: David Kinzer


Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


