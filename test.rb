require_relative 'config/application'
require_relative 'app/models/todo'


# Todo.all.each do |todo|
# 	p todo
# end

# completed = Todo.all.find(completion_status: "0")

Todo.all.each_with_index do |x,y|
	# p "#{y+1}"  + ". " + "#{x.description}"
	if y-1 == 0
		p x.description
	end
end

