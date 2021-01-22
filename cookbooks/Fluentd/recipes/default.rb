#
# Cookbook:: Fluentd
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
# Install fluentd
windows_package 'td-agent' do
    action : install
end
