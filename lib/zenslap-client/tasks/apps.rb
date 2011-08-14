class Zenslap::Apps < Thor
  namespace :apps

  # Unless you include the namespace in the task name the -T task list
  # will list everything under the top-level namespace
  # (which I think is a bug in Thor)
  desc "#{namespace}:create", "Does something"
  def create
    puts 'Hello'
  end
end