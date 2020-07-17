class Den < ApplicationRecord
  belongs_to :pack
  has_many :leaders, through: :pack
  has_many :scouts
end

