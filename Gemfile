source "http://rubygems.org"

# Specify your gem's dependencies in zenslap-client.gemspec
gemspec

# Add dependencies to develop your gem here.
# Include everything needed to run rake, tests, features, etc.
group :development, :test do
  gem "shoulda", ">= 0"
  gem "bundler", "~> 1.0.0"
  gem "rcov", ">= 0"
  gem "rspec"
  gem "mocha"
  gem "cucumber"
  gem 'aruba'
end

group :local do
  gem 'ruby-debug', :platform => 'ruby_18'
  gem 'ruby-debug19', :platform => 'ruby_19'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'rb-fsevent'
  gem 'growl_notify'
end
