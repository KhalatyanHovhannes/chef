#
# Cookbook:: Fluentd
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
# Install fluentd
package "fluentd" do
    action :install
end
# Enable service fluentd
service "fluentd" do
    action [:enable, :start]
end
