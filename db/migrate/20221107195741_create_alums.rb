class CreateAlums < ActiveRecord::Migration[6.1]
  def change
    create_table :alums do |t|
      t.string :name
      t.string :email
      t.string :degree
      t.string :divsion

      t.timestamps
    end
  end
end
