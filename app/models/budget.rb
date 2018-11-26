class Budget < ApplicationRecord
  belongs_to :user
  monetize :price_cents
  acts_as_taggable_on :categories
  has_many :cash_flows
end
