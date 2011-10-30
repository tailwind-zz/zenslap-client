desc 'Describe config here'
arg_name 'Describe arguments to config here'
command :config do |c|
  c.action do |global_options,options,args|
  end
end

desc 'Describe config:add here'
arg_name 'Describe arguments to config:add here'
command :'config:add' do |c|
  c.action do |global_options,options,args|
    puts "config:add"
  end
end

desc 'Describe config:remove here'
arg_name 'Describe arguments to config:remove here'
command :'config:remove' do |c|
  c.action do |global_options,options,args|
  end
end