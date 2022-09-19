class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.integer :Meeting_id
      t.integer :Mem_id
      t.timestamp :Att_time

      t.timestamps
    end
  end
end
