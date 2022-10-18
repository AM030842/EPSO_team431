class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :Mem_id
      t.boolean :Mem_isActive
      t.string :Mem_name
      t.string :Mem_email
      t.integer :Mem_Points
      t.string :Mem_Dept

      t.timestamps
    end
  end
end
