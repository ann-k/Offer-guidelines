class RemoveSalaryFromJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :salary, :integer
  end
end
