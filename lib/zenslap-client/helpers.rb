module Zenslap
  module Helpers
    
    def ask_for something, default = nil
      display(default ? "#{something} (#{}):" : "#{something}:")
      gets.strip || default
    end
    
    def display(msg="", newline=true)
      if newline
        puts(msg)
      else
        print(msg)
        STDOUT.flush
      end
    end
    
    def home_directory
      running_on_windows? ? ENV['USERPROFILE'] : ENV['HOME']
    end

    def running_on_windows?
      RUBY_PLATFORM =~ /mswin32|mingw32/
    end

    def running_on_a_mac?
      RUBY_PLATFORM =~ /-darwin\d/
    end
    
  end
end