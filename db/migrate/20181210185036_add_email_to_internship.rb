class AddEmailToInternship < ActiveRecord::Migration[5.2]
  def change
    add_column :internships, :email, :string
  end
end
