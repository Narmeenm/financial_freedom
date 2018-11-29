class Goal < ApplicationRecord
has_many :users, through: :user_goals
end
