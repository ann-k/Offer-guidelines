class AddDeadlineNoneToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :deadline_none, :boolean
  end
end
