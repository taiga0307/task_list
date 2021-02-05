class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_title
      t.text :event_content
      t.datetime :start_time

      t.timestamps
    end
  end
end
