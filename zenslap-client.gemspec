# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zenslap-client/version"

Gem::Specification.new do |s|
  s.name        = "zenslap-client"
  s.version     = Zenslap::Client::VERSION
  s.authors     = ["stellard"]
  s.email       = ["scott@zenslap.me"]
  s.homepage    = ""
  s.summary     = %q{The zenslap client gem allows you to create/destroy and configure your zenslap test environment on heroku}
  s.description = %q{Client gem for zenslap.me}

  s.rubyforge_project = "zenslap-client"
  s.homepage = "http://github.com/tailwind/zenslap-client"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency("heroku")
  s.add_dependency("highline")
  s.add_dependency("thor")
end
