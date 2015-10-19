require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

if ARGV[0] == "list"
	Todo.all.each do |todo|
		p "#{todo.id}" + ". " + "#{todo.description}"
	end
end

if ARGV[0] == "append"
	converted_text = ARGV[1..-1].join(' ')
	Todo.create(description: "#{converted_text}", completion_status: "0")
	p "Appended #{converted_text} to your TODO list..."
end

if ARGV[0] == "delete"
	deleted_index = ARGV[1]
	deleted_row = Todo.where(id: "#{deleted_index}")
	deleted_text = nil

	deleted_row.each do |x|
		deleted_text = x.description
	end

	p "Deleted #{deleted_text} from your TODO list..."
	Todo.find_by(id: "#{deleted_index}").destroy
end

if ARGV[0] == "list_complete"
	completed_todos = Todo.all.select{|x| x.completion_status == "1"}
	p "These are the completed tasks:"
	completed_todos.each do |x|
		p "#{x.id}." + " " + x.description
	end

	incompleted_todos = Todo.all.select{|y| y.completion_status == "0"}
	p ""
	p "These are the incompleted tasks:"
	incompleted_todos.each do |y|
		p "#{y.id}." + " " + y.description
	end
end

if ARGV[0] == "complete"
	completed_index = ARGV[1]
	completed_row = Todo.where(id: "#{completed_index}")
	completed_text = nil

	completed_row.each do |x|
		completed_text = x.description
	end

	p "#{completed_text} has been completed"
	Todo.find_by(id: "#{completed_index}").update(completion_status: "1")
end