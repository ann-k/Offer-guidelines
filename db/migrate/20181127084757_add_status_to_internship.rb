class AddStatusToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :status, :string
  end
end
