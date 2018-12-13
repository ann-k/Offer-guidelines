class RemoveUserIdFromPublicTalk < ActiveRecord::Migration[5.2]
  def change
    remove_column :public_talks, :user_id, :integer
  end
end
