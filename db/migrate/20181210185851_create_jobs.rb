class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :email
      t.string :company_name
      t.string :company_specialty
      t.text :company_description
      t.string :social_network_link
      t.string :position
      t.integer :places_available
      t.text :worker_tasks
      t.text :special_requirements
      t.date :work_start_date
      t.string :schedule
      t.integer :salary
      t.text :conditions
      t.string :application_contacts
      t.text :application_description
      t.string :application_materials
      t.date :deadline

      t.timestamps
    end
  end
end
