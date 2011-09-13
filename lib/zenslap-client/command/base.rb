module Zenslap
  module Command
    class Base
      extend Zenslap::Helpers
      class << self
    
        def run *args
          raise "Not implemented"
        end
      
      end
    end
  end  
end