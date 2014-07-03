#
# Cookbook Name:: casperjs
# Recipe:: default
#
# Copyright 2013, Jenkins Law Library
#
# # Licensed under the Apache License, Version 2.0 (the "License");
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
include_recipe 'git'
source_dir = node['casperjs']['git']['source_dir']
source_url = node['casperjs']['git']['source_url']
source_ref = node['casperjs']['version']

git "#{source_dir}/casperjs" do
  repository source_url
  reference  source_ref
  action     :checkout
end

link '/usr/local/bin/casperjs' do
  if /^[01]\.[01](\.\d|-beta[123])?/.match(basename) then
    to "#{source_dir}/casperjs/rubybin/casperjs"
  else
    to "#{source_dir}/casperjs/bin/casperjs"
  end
end
