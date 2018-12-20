class ChangeInternshipDurationToBeStringInInternship < ActiveRecord::Migration[5.2]
  def change
    change_column :internships, :internship_duration, :string
  end
end
