class CreateCashFlows < ActiveRecord::Migration[5.2]
  def change
    create_table :cash_flows do |t|
      t.string :nature
      t.datetime :date
      t.references :user, foreign_key: true
      t.references :budget, foreign_key: true

      t.timestamps
    end
  end
end
