class AddDegreesToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :Mem_degree, :string
  end
end