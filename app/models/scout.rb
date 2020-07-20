class Scout < ApplicationRecord
  validates :first_name, :last_name, presence: true  
  has_one :pack, through: :den 
  belongs_to :den 
  has_and_belongs_to_many :leaders
  accepts_nested_attributes_for :den, reject_if: ->(attributes){ attributes['den_id'].blank? }, allow_destroy: true
  
  
  def full_name 
    "#{first_name} #{last_name}"
  end

  def is_grade(grade)
    Scout.find_by(grade: grade)
  end
end
