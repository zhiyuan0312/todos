require_relative 'config/application'

puts "Put your application code in #{File.expand_path(__FILE__)}"

if ARGV[0] == "list"
	Todo.all.each do |todo|
		p todo
	end
end