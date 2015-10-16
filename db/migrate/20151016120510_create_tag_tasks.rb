class CreateTagTasks < ActiveRecord::Migration
  def change
    create_table :tag_tasks do |t|
    t.integer :task_id, null: false
    t.integer :tag_id, null: false
    t.timestamps null: false
    end
  end
end
