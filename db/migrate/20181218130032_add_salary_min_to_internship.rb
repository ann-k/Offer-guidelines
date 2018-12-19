class AddSalaryMinToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :salary_min, :integer
  end
end
