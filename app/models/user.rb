class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  has_many :restaurants 
  has_secure_password
  
end