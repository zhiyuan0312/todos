require_relative 'config/application'
require_relative 'app/models/todo'


# Todo.all.each do |todo|
# 	p todo
# end

# completed = Todo.all.find(completion_status: "0")

completed_rows = Todo.all.select{|x| x.completion_status == "1"}
completed_rows.each do |x|
	p "#{x.id}" + " " + x.description
end