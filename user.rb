class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  
  has_one :profile, dependent: :destroy
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy
end