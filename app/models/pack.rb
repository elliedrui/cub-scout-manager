class Pack < ApplicationRecord
  validates :pack_num, uniqueness: true, presence: true  
  belongs_to :user
  belongs_to :scout
end
