class Gymadm < ApplicationRecord
  belongs_to :admin
  belongs_to :gym

  validates :gym_no, presence: true
  validates :adm_no, presence: true
end
