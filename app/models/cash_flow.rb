class CashFlow < ApplicationRecord
  belongs_to :user
  belongs_to :budget
  monetize :price_cents
end
