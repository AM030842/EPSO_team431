class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.datetime :timestamp
      t.integer :operation_id
      t.string :operation_type
      t.text :content

      t.timestamps
    end
  end
end
