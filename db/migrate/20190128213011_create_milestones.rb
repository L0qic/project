class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.date :devEndDate
      t.integer :qaDays
      t.references :task, foreign_key: true
      t.timestamps
    end
  end
end
