class AddSalaryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :salary, :string
  end
end
