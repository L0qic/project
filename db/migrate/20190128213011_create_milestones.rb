class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.date :dev_end_date
      t.integer :qa_days
      t.references :task, foreign_key: true
      t.timestamps
    end
  end
end
