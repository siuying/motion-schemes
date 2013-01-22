# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'
require 'bundler'
Bundler.require(:default)

require './lib/motion-schemes'

Motion::Project::App.setup do |app|
  app.name = 'motion-schemes'
  app.scheme = :ipad
end

Motion::Project::App.scheme(:iphone) do |app|
  app.device_family = :iphone
  app.interface_orientations = [:portrait]
end

Motion::Project::App.scheme(:ipad) do |app|
  app.device_family = :ipad
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right, :portrait_upside_down]
end

desc "Build the gem"
task :gem do
  sh "bundle exec gem build motion-schemes.gemspec"
  sh "mkdir -p pkg"
  sh "mv *.gem pkg/"
end

desc "Release the gem"
task :release => :gem do
  sh "bundle exec gem push pkg/motion-schemes-#{Motion::Project::Schemes::VERSION}.gem"
end
