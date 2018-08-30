#
# Cookbook:: br_intern_javaapp
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# Cookbook Name:: br_inteen_test1java
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

include_recipe 'br_intern_javaapp::java'
include_recipe 'br_intern_javaapp::tomcat'
include_recipe 'br_intern_javaapp::deploy'
