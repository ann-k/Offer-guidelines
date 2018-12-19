class AddSalaryMaxToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :salary_max, :integer
  end
end
