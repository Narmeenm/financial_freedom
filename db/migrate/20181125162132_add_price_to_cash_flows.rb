class AddPriceToCashFlows < ActiveRecord::Migration[5.2]
  def change
  	add_monetize :cash_flows, :price, currency: { present: false }

  end
end
