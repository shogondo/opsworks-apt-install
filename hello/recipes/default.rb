#
# Cookbook:: hello
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

log 'Hello world'

package "nginx" do
  action :install
end
  