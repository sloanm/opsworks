#
# Cookbook:: abc
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end

cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end
