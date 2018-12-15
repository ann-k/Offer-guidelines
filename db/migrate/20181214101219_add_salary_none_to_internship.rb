class AddSalaryNoneToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :salary_none, :boolean
  end
end
