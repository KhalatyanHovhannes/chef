#!/bin/bash
# chef install&config
yum install wget -y
wget -O- https://opscode.com/chef/install.sh | sudo bash
mkdir /etc/chef-solo
mkdir /etc/chef-solo/cookbooks
mkdir /etc/chef-solo/data_bags
mkdir /etc/chef-solo/cache
mkdir /etc/chef-solo/roles
cd /etc/chef-solo
cat <<EOT >> solo.rb
echo cookbook_path [
               '/etc/chef-solo/cookbooks'
              ]
data_bag_path '/etc/chef-solo/data_bags'
file_cache_path '/etc/chef-solo/cache'
role_path '/etc/chef-solo/roles'
EOT