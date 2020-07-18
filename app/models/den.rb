class Den < ApplicationRecord
 
  belongs_to :pack
  has_many :scouts
  has_many :leaders
  
end

