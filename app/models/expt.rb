class Expt < ApplicationRecord
  validates :ex_det_cd, presence: true
  validates :pt_det_cd, presence: true
end
