class AddCategoryRefToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_reference :budgets, :category, foreign_key: true
  end
end
