class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.integer :meeting_id
      t.integer :member_id
      t.timestamp :att_time

      t.timestamps
    end
  end
end
