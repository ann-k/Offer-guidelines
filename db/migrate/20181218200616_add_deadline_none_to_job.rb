class AddDeadlineNoneToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :deadline_none, :boolean
  end
end
