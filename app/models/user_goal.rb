class UserGoal < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  acts_as_taggable_on :categories

  monetize :amount_cents
end
