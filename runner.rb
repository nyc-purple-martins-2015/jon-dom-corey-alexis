require_relative 'config/environment'
require_relative 'list'
require_relative 'task'
require_relative 'tag_task'
require_relative 'tag'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil

# Enter your code below ...
