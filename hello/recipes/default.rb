#
# Cookbook:: hello
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

default['nginx']['repo_signing_key'] = 'https://nginx.org/keys/nginx_signing.key'

include_recipe 'apt'

log 'Hello world'

apt_repository 'nginx' do
  uri        'http://nginx.org/packages/ubuntu/'
  components ['nginx']
  keyserver 'keyserver.ubuntu.com'
  key 'ABF5BD827BD9BF62'
end
