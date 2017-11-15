#
# Cookbook Name:: simple_demo
# Recipe:: default
#
# All rights reserved - Do Not Redistribute
#

execute "yum update" do
    command "yum update"
end

package "httpd" do
    action :install
end

service "httpd" do
    action [:start, :enable]
end

cookbook_file "/var/www/html/index.html" do
    source "index.html"
    mode '0644'
end
