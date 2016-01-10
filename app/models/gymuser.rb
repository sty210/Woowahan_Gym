class Gymuser < ApplicationRecord
  validates :gym_no, presence: true
  validates :user_no, presence: true
end
