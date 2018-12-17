class ChangeSalaryForJobs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :jobs do |t|
      t.change :salary, :string
    end
  end
  def self.down
    change_table :jobs do |t|
      t.change :salary, :string
    end
  end
end
