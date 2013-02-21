casperjs Cookbook
=================
This Chef cookbook will install the precompiled casperjs binary. 

Tested on centos 6.3 and ubuntu 12.10

Requirements
------------

#phantomjs - casperjs requires phantomjs .



Attributes
----------

e.g.
#### casperjs::default
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
</table>

Usage
-----
#### casperjs::default

e.g.
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
e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Chad Nelson


