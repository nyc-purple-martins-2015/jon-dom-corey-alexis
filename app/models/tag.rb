class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tag_tasks
  has_many :tasks, through: :tag_tasks
end
