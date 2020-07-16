class Den < ApplicationRecord
  belongs_to :pack
  has_many :scouts, class_name: "scout", foreign_key: "scout_id"
end
