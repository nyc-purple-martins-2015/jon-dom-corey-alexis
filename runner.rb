require_relative 'config/environment'
require_relative './app/models/list.rb'
require_relative './app/models/task.rb'
require_relative './app/models/tag.rb'
# require_relative './app/models/tag_task.rb'
require_relative './app/views/view.rb'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil

# Enter your code below ...
view=View.new

case ARGV[0]
when "list"
  view.display_list
when "add"
  ARGV.shift
  Task.add(ARGV.join(" "))
when "complete"
  p Task.find(ARGV[1]).complete
when "delete"
  Task.delete(ARGV[1])
else
  p Task.last
end
# walk_dog = Task.first
# walk_dog.complete
# view.display_list

