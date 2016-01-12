class Review < ApplicationRecord
  belongs_to :gym, class_name: 'Gym', foreign_key: 'id'
  belongs_to :user, class_name: 'User', foreign_key: 'id'

  validates :gym_no, presence: true
  validates :rv_wr_id, presence: true, length: { minimum: 6 }
  validates :rv_wr_tm, presence: true
  validates :rv_content, presence: true
  validates :rv_point, presence: true
end
