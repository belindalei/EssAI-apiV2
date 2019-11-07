class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :email, :password, presence: true
  validates :password, length: { in: 6..10 }

  has_many :responses 
  has_many :essays, through: :responses
end
