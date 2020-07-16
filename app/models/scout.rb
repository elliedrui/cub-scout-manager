class Scout < ApplicationRecord
  validates :first_name, :last_name, presence: true  
  has_one :pack
  has_many :leaders, through: :pack
end
