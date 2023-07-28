class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_secure_password
end