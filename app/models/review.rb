class Review < ApplicationRecord
  belongs_to :gym
  belongs_to :user

  validates :gym_no, presence: true
  validates :rv_wr_id, presence: true, length: { minimum: 6 }
  validates :rv_wr_tm, presence: true
  validates :rv_content, presence: true
  validates :rv_point, presence: true
end
