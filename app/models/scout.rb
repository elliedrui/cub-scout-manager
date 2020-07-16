class Scout < ApplicationRecord
  has_many :leaders, through: :pack
end
