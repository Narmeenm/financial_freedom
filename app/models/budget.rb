class Budget < ApplicationRecord
  belongs_to :user
  belongs_to :category
  monetize :amount_cents

  has_many :cash_flows ,dependent: :destroy
  #validates_uniqueness_of :category_id, scope: :category
end
