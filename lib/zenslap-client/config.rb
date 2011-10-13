require 'json'

class Zenslap::Config
  include Zenslap::Helpers
  
  def initialize
    @config = read_config_from_file || {}
  end
  
  def token
    @config['token'] ||= get_config_from_user('token', "Zenslap API token")
  end
    
  def get_config_from_user key, text
    ask_for(text).tap do |value|
      @config[key] = value
      Dir.mkdir(File.dirname(config_file_path))
      File.open(config_file_path, 'w') {|f| f.write(@config.to_json) }
    end
  end
  
  
  def read_config_from_file 
    File.exists?(config_file_path) && JSON.parse(File.read(config_file_path))
  end
  
  def config_file_path
    File.join(home_directory, '.zenslap', 'config')
  end
  
  
  def github_repository
    @github_repository ||= begin
      github_url = `git config --get remote.origin.url`
      github_repository = github_url[/github.com.(.+)/, 1].gsub(/\.git$/, "")
      say "Unable to find a github repository in git config" unless github_repository
      ask_for("Github repository",  :default => github_repository, :validate => /\A[\w-]+\/[\w-]+\Z/, :not_valid => "Must be in format: username/repository_name")
    end
  end
        
end  
