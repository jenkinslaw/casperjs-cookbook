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
include_recipe "phantomjs"


%w(unzip).each do |package|
  package package
end


basename = node['casperjs']['version']


remote_file "/usr/local/src/casperjs-#{basename}" do
  action :create_if_missing
  backup false
  mode '0644'
  source "#{node['casperjs']['archive']['url_prefix']}#{basename}#{node['casperjs']['archive']['url_suffix']}"
end


execute 'Install casperjs' do
  command "unzip /usr/local/src/casperjs-#{basename} -d /usr/local/"
  not_if "test -d /usr/local/casperjs-#{basename}"
end

link '/usr/local/bin/casperjs' do
  to "/usr/local/casperjs-#{basename}/rubybin/casperjs"
end

