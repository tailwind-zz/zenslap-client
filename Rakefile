require 'rake/clean'
require 'rubygems'
require 'rake/rdoctask'

require 'bundler'
require "bundler/gem_tasks"

Rake::RDocTask.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rd.title = 'Zenslap CLI'
end
