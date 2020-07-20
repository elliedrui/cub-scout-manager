class Scout < ApplicationRecord
  validates :first_name, :last_name, presence: true  
  has_one :pack, through: :den 
  belongs_to :den 
  has_and_belongs_to_many :leaders
  accepts_nested_attributes_for :den, reject_if: ->(attributes){ attributes['den_id'].blank? }, allow_destroy: true
  
  
  def full_name 
    "#{first_name} #{last_name}"
  end

  scope :ready_for_BSA?, -> {where("grade = '5th'")}
  def ready_for_BSA?
    self.grade == "5th"
  end
end
