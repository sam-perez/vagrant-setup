
# Cookbook Name:: cocoon
# Recipe:: default
#
# Copyright (C) 2014 FullStack
#

#
# Update dependencies once.
#
execute 'apt-get update' do
  ignore_failure true
end

#
# Install postgres and create development user. Note that this is a bit of
# duplication with the ubuntu setup script.
#
include_recipe 'cocoon::_postgres'
