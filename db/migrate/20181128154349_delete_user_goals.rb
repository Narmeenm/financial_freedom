class DeleteUserGoals < ActiveRecord::Migration[5.2]
  def change
    drop_table :goals_users
  end
end
