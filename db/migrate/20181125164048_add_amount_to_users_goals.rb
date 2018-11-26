class AddAmountToUsersGoals < ActiveRecord::Migration[5.2]
  def change
  	add_monetize :goals_users, :amount, currency: { present: false }

  end
end
