class Gym < ApplicationRecord
  has_many :gymadms
  has_many :gymusers
  has_many :reviews

  validates :gym_nm, presence: true
  validates :gym_adr, presence: true, length: { minimum: 5 }
  validates :rgn_cd, presence: true
end
