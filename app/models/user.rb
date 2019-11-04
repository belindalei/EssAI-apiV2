class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, :password, presence: true

  has_many :responses 
  has_many :essays, through: :responses
end
