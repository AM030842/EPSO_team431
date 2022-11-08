class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.timestamp :time
      t.string :description
      t.integer :points

      t.timestamps
    end
  end
end
