class AddInternshipDurationNoneToInternships < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :internship_duration_none, :boolean
  end
end
