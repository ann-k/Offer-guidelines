class AddDeadlineNoneToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :deadline_none, :boolean
  end
end
