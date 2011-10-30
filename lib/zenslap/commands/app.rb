desc 'Describe create here'
arg_name 'Describe arguments to create here'
command :create do |c|
  c.desc 'Describe a switch to create'
  c.switch :s

  c.desc 'Describe a flag to create'
  c.default_value 'default'
  c.flag :f
  c.action do |global_options,options,args|
    puts "create"
    # Your command logic here
     
    # If you have any errors, just raise them
    # raise "that command made no sense"
  end
end

desc 'Describe destroy here'
arg_name 'Describe arguments to destroy here'
command :destroy do |c|
  c.action do |global_options,options,args|
  end
end

desc 'Describe stack here'
arg_name 'Describe arguments to stack here'
command :stack do |c|
  c.action do |global_options,options,args|
  end
end

desc 'Describe logs here'
arg_name 'Describe arguments to logs here'
command :logs do |c|
  c.action do |global_options,options,args|
  end
end