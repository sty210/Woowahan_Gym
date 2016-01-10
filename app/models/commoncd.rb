class Commoncd < ApplicationRecord
  validates :main_cd, presence: true, length: { minimum: 4 }
  validates :det_cd, presence: true
  validates :cd_nm, presence: true
end
