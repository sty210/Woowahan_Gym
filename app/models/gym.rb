class Gym < ApplicationRecord
  validates :gym_nm, presence: true
  validates :gym_adr, presence: true, length: { minimum: 5 }
  validates :rgn_cd, presence: true
end
