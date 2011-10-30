
require 'zenslap-client/helpers'
require 'zenslap-client/config'
require 'zenslap-client/command/base'
require 'zenslap-client/command/create'
require "highline/import"
require "zenslap-client/version"


module Zenslap
  module Command
    extend self
    
    def run method, args
      Create.run(args)
    end
    

    
  end
end
