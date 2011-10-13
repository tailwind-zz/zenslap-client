# require 'heroku'
# require 'heroku/command'

# module Zenslap
#   class Runner < ::Thor::Runner
#     private
#     def thorfiles(*args)
#       Dir[File.join(File.dirname(__FILE__),'/zenslap-client/tasks/*.rb')]
#     end
#   end
# end

require 'zenslap-client/helpers'
require 'zenslap-client/config'
require 'zenslap-client/command/base'
require 'zenslap-client/command/create'
require "highline/import"

module Zenslap
  module Command
    extend self
    
    
    
    def run method, args
      Create.run(args)
    end
    

    
  end
end