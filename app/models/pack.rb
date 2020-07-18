class Pack < ApplicationRecord
  validates :pack_number, uniqueness: true, presence: true  
  has_many :dens
  has_many :scouts, through: :dens
  has_many :leaders, through: :dens
end
