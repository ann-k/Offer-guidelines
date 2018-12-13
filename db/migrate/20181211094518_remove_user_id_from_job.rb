class RemoveUserIdFromJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :user_id, :integer
  end
end
