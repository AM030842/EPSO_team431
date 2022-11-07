class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.integer :points
      t.string :degree
      t.string :division

      t.timestamps
    end
  end
end
