# == Schema Information
#
# Table name: jurisdictions
#
#  jurisdiction       :integer          primary key
#  description_code   :integer
#  jurisdiction_class :integer
#

class Jurisdiction < ActiveRecord::Base
  attr_accessible :description_code, :jurisdiction, :jurisdiction_class

  self.primary_key = :jurisdiction

  validates :jurisdiction, presence: true, length: { maximum: 10 }, 
            uniqueness: true
  validates :description_code, presence: true, length: { maximum: 10 }
  validates :jurisdiction_class, length: { maximum: 6 }

  has_many :usage_jurisdictions, foreign_key: :jurisdiction, dependent: :destroy

  rails_admin do
    object_label_method :jurisdiction
  end
end
