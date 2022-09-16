class CreateAlumnis < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnis do |t|
      t.integer :mem_Id
      t.string :mem_Email
      t.string :mem_Name
      t.string :mem_Degree
      t.string :mem_Dept

      t.timestamps
    end
  end
end
