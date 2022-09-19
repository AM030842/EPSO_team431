class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.integer :meeting_id
      t.string :meeting_title
      t.datetime :meeting_time
      t.text :meeting_desc

      t.timestamps
    end
  end
end
