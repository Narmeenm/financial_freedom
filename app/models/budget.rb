class Budget < ApplicationRecord
  belongs_to :user
  belongs_to :category
  monetize :amount_cents
  acts_as_taggable_on :categories
  
  has_many :cash_flows ,dependent: :destroy
end
