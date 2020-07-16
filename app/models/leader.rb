class Leader < ApplicationRecord
  validates :first_name, :last_name, presence: true  
  has_one :pack
  has_many :dens, through: :pack
  has_many :scouts, through: :pack
end
