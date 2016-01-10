class Gymadm < ApplicationRecord
  validates :gym_no, presence: true
  validates :adm_no, presence: true
end
