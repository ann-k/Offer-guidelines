class AddStepToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :step, :integer
  end
end
