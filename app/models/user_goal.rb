class UserGoal < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  monetize :amount_cents

  validates :goal_id, presence: { scope: :goal}
  validates :amount_cents, presence: true

end
