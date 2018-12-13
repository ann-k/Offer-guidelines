class AddUserIdToPublicTalk < ActiveRecord::Migration[5.2]
  def change
    add_column :public_talks, :user_id, :integer
  end
end
