class AddStepToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :step, :integer
  end
end
