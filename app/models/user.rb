class User < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, :email, presence: true  
  validates :email, uniqueness: true
  validates :uid, uniqueness: true
  has_many :dens
  
end
