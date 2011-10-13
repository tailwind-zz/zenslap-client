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
        
end  
