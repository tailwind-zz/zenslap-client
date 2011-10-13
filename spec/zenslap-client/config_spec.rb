require 'spec_helper'

describe Zenslap::Config do
  
  describe "#token" do
    
    def file_should exist_or_not
      if exist_or_not == 'exist'
        File.open(config_file, 'w') {|f| f.write(config.to_json) }
      else
        FileUtils.rm_rf(File.dirname(config_file))
      end
    end
    
    let(:home_dir) { File.join(Dir.pwd, 'tmp') }
    let(:config_file) { File.join(home_dir, '.zenslap/config') }
    let(:token) { "u48923y57834y543" }
    let(:config) { { 'token' => token }}
    
    before {
      file_should exist_or_not
      Zenslap::Config.any_instance.stubs(:home_directory).returns(home_dir) 
    }
    
    context "without a config file present" do
      let(:exist_or_not) { 'not exist' }
      
      before {
        $stdin.stubs(:read).returns(token)
        subject.token
      }
      
      it "should create the file" do
        File.exist?(config_file).should be_true
      end
      
      it "should contain the token" do
        JSON.parse(File.read(config_file))['token'].should == token
      end
      
       its(:token) { should == token }
    end
    
    context "with config file present" do
      let(:exist_or_not) { 'exist' }
      
      its(:token) { should == token }
    end
    
  end
end