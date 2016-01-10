class Exty < ApplicationRecord
  validates :ex_det_cd, presence: true
  validates :ty_det_cd, presence: true
end
