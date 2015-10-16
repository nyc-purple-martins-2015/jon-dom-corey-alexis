class Task < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tag_tasks
  has_many :tags, through: :tag_tasks
  belongs_to :list

  def self.add(string, list_id = 1)
    Task.create(task_description: string, list_id: 1, status: false)
  end

  def to_s
    if self.status == false
      return "[ ] #{task_description}"
    else
      return "[X] #{task_description}"
  end

  def self.delete(id)
    Task.find(id).destroy
  end





end
