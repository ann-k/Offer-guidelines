class CreatePublicTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :public_talks do |t|
      t.string :theme
      t.string :speaker
      t.date :public_talk_date
      t.string :speaker_contacts

      t.timestamps
    end
  end
end
