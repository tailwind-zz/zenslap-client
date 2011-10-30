$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'mocha'
# require 'vcr'
# require 'webmock/rspec'
require 'zenslap'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  
  config.mock_with :mocha
  config.include IOHelper
	config.color_enabled = true
	config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
end