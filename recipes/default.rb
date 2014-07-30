#
# Cookbook Name:: cmd_redmine
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "lamp"

package "ruby-openid" do
  action :install
end

package "imagemagick" do
  action :install
end

package "libmagickcore-dev" do
  action :install
end

package "libmagickwand-dev" do
  action :install
end

package "libapache2-mod-passenger" do
  action :install
end

package "ruby-passenger" do
  action :install
end

execute "gem install bundler" do
  command "gem install bundler"
  action :run
end