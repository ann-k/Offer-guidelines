class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name
      t.text :question
      t.string :contacts

      t.timestamps
    end
  end
end
