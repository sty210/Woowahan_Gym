class User < ApplicationRecord
  has_many :gymusers
  has_many :reviews

  validates :user_id, presence: true, length: { minimum: 6 }
  validates :user_pw, presence: true, length: { minimum: 6 }
  validates :user_nm, presence: true, length: { minimum: 2 }
end
