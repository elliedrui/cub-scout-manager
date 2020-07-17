class Pack < ApplicationRecord
  validates :pack_number, uniqueness: true, presence: true  
  belongs_to :leader
  belongs_to :scout
  has_many :dens
end
