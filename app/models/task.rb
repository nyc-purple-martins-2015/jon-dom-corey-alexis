class Task < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tag_tasks
  has_many :tags, through: :tag_tasks
  belongs_to :list

  def self.add(string, list_id = 1)
    Task.create(task_description: string, list_id: 1, status: false)
    @list_index = Task.all.where(list_id: 1).count + 1
  end

  def to_s
    if self.status == false
      "[ ] #{task_description}"
    else
      "[X] #{task_description}"
    end
  end

  def self.delete(id)
    Task.find(id).destroy
  end

  def complete
    self.status=true
    self.save
  end





end
