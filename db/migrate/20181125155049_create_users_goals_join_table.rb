class CreateUsersGoalsJoinTable < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :users ,:goals do |t|
  		t.index :user_id
  		t.index :goal_id
  	end
  end
end
