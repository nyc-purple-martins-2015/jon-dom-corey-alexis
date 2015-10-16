# require_relative 'list'
# require_relative 'task'
# require_relative 'tag_task'
# require_relative 'tag'

class View

  def initialize

  end

  def display_list(list_id = 1)
    list = List.all.find(list_id)
    puts list.list_name
    Task.all.select { |task| task.list_id == list_id }.each_with_index { |task, index| puts "#{index + 1}. #{task}" }
  end




end
