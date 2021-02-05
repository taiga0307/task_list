class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :customer_id
      t.string :task_title
      t.boolean :task_valid, default: false, null: false

      t.timestamps
    end
  end
end
