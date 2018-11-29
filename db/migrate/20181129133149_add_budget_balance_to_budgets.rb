class AddBudgetBalanceToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :Budget_balance, :integer
  end
end
