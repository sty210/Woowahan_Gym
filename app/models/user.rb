class User < ApplicationRecord
  validates :user_id, presence: true, length: { minimum: 6 }
  validates :user_pw, presence: true, length: { minimum: 6 }
  validates :user_nm, presence: true, length: { minimum: 2 }
end
