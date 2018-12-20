class RemoveSalaryFromInternship < ActiveRecord::Migration[5.2]
  def change
    remove_column :internships, :salary, :integer
  end
end
