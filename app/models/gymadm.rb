class Gymadm < ApplicationRecord
  belongs_to :admin, class_name: 'Admin', foreign_key: 'id'
  belongs_to :gym, class_name: 'Gym', foreign_key: 'id'

  validates :gym_no, presence: true
  validates :adm_no, presence: true
end
