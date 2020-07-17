class Scout < ApplicationRecord
  validates :first_name, :last_name, presence: true  
  has_one :pack
  has_many :leaders, through: :pack
  belongs_to :den

  def full_name
    "#{first_name} #{last_name}"
  end
end
