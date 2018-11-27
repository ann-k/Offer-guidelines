class RemoveStringFromInternships < ActiveRecord::Migration[5.2]
  def change
    remove_column :internships, :string, :string
  end
end
