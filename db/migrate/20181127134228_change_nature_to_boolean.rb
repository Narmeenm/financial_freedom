class ChangeNatureToBoolean < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cash_flows, :nature
  	add_column :cash_flows, :income, :boolean ,default:true
  end
end
