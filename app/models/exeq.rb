class Exeq < ApplicationRecord
  validates :ex_det_cd, presence: true
  validates :eq_det_cd, presence: true
end
