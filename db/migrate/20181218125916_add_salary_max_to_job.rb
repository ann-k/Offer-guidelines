class AddSalaryMaxToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :salary_max, :integer
  end
end
