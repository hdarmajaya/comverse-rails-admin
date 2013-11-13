class Jurisdiction < ActiveRecord::Base
  attr_accessible :description_code, :jurisdiction, :jurisdiction_class

  self.primary_key = :jurisdiction

  validates :jurisdiction, presence: true, length: { maximum: 10 }, 
            uniqueness: true
  validates :description_code, presence: true, length: { maximum: 10 }
  validates :jurisdiction_class, length: { maximum: 6 }
end
