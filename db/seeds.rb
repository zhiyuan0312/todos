require 'faker'

# def self.create_todos
	10.times do
    	Todo.create(description: Faker::Hacker.say_something_smart, completion_status: Faker::Number.between(0, 1))
    end
  # end

