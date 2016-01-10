class Exmth < ApplicationRecord
  validates :ex_det_cd, presence: true
  validates :ex_mth_ep, presence: true
end
