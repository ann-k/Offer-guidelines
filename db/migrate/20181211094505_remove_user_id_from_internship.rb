class RemoveUserIdFromInternship < ActiveRecord::Migration[5.2]
  def change
    remove_column :internships, :user_id, :integer
  end
end
