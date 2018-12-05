class Budget < ApplicationRecord
  belongs_to :user
  belongs_to :category
  monetize :amount_cents

  has_many :cash_flows ,dependent: :destroy
  #validates_uniqueness_of :category_id, scope: :category


  def spent
    self.cash_flows.sum(:price_cents)
  end

  def remaining
    self.amount.to_i - self.spent
  end
end
