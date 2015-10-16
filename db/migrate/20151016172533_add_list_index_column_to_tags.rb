class AddListIndexColumnToTags < ActiveRecord::Migration
  def change
    add_column :tasks, :list_index, :integer
  end
end
