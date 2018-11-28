class Changecolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :salary
    add_column :users, :salary, :integer
  end
end
