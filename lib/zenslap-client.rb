module Zenslap
  class Runner < ::Thor::Runner
    private
    def thorfiles(*args)
      Dir[File.join(File.dirname(__FILE__),'/zenslap-client/tasks/*.rb')]
    end
  end
end