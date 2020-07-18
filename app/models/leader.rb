class Leader < ApplicationRecord
  validates :first_name, :last_name, presence: true  
  has_one :pack, through: :den 
  belongs_to :den 
  has_and_belongs_to_many :scouts

  
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
