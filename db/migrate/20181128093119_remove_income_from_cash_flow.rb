class RemoveIncomeFromCashFlow < ActiveRecord::Migration[5.2]
  def change
    remove_column :cash_flows, :income, :boolean
  end
end
