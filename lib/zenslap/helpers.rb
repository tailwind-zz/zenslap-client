module Zenslap
  module Helpers
    
    def ask_for something, options = {}
      options ||= {}
      ask("#{something}:") do |q|
        q.default = options[:default] if options[:default]
        q.validate = options[:validate] || /\A\w+\Z/
        q.responses[:not_valid] = options[:not_valid] || "Input cannot be blank."
      end
    end
    
    def display(msg="", newline=true)
      if newline
        puts(msg)
      else
        print(msg)
        $stdout.flush
      end
    end
    
    def home_directory
      File.expand_path(running_on_windows? ? ENV['USERPROFILE'] : ENV['HOME'])
    end

    def running_on_windows?
      RUBY_PLATFORM =~ /mswin32|mingw32/
    end

    def running_on_a_mac?
      RUBY_PLATFORM =~ /-darwin\d/
    end
    
  end
end