class Gymuser < ApplicationRecord
  belongs_to :gym
  belongs_to :user

  validates :gym_no, presence: true
  validates :user_no, presence: true
end
