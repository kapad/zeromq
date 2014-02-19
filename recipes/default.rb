#
# Cookbook Name:: zeromq
# Recipe:: default
#
# Copyright (C) 2012 Fewbytes
# 
# All rights reserved - Do Not Redistribute

case node.platform_family
when "debian"
  package "libzmq1"
else
  package "zeromq"
end