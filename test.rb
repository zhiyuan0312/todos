require_relative 'config/application'
require_relative 'app/models/todo'


Todo.all.each do |todo|
	p todo
end