class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
