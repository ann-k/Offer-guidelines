class AddUserIdToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :user_id, :integer
  end
end
