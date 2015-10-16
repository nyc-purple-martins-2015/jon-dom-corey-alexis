class Tasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_description, null: false
      t.integer :list_id, null: false
      t.boolean :status, null: false
      t.timestamps null: false
    end
  end
end
