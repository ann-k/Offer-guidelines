class CreateInternships < ActiveRecord::Migration[5.2]
  def change
    create_table :internships do |t|
      t.string :company_name
      t.string :company_specialty
      t.text :company_description
      t.string :social_network_link
      t.string :position
      t.integer :places_available
      t.text :intern_tasks
      t.date :internship_duration
      t.string :schedule
      t.string :string
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
