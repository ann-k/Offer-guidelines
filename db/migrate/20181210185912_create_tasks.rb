class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :company_name
      t.string :company_specialty
      t.text :company_description
      t.string :social_network_link
      t.string :position
      t.text :task_description
      t.string :task_materials
      t.date :deadline
      t.integer :salary
      t.integer :correction_charge
      t.text :barter

      t.timestamps
    end
  end
end
