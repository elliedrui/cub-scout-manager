class Pack < ApplicationRecord
  validates :pack_num, uniqueness: true, presence: true  
  belongs_to :leader
  belongs_to :scout
  has_many :dens
end
