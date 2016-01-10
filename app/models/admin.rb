class Admin < ApplicationRecord
  has_many :gymadms

  validates :adm_id, presence: true, length: { minimum: 6 }
  validates :adm_pw, presence: true, length: { minimum: 6 }
  validates :adm_nm, presence: true
end
