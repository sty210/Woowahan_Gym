class Gymuser < ApplicationRecord
  belongs_to :gym, class_name: 'Gym', foreign_key: 'id'
  belongs_to :user, class_name: 'User', foreign_key: 'id'

  validates :gym_no, presence: true
  validates :user_no, presence: true
end
