# == Schema Information
#
# Table name: jurisdiction_class_ref
#
#  jurisdiction_class :integer          primary key
#  is_default         :integer
#  is_internal        :integer
#

class JurisdictionClassRef < ActiveRecord::Base
  include SharedMethods

  attr_accessible :is_default, :is_internal, :jurisdiction_class

  self.table_name = :jurisdiction_class_ref
  self.primary_key = :jurisdiction_class

  validates :jurisdiction_class, presence: true, length: { maximum: 6 }, 
            uniqueness: true
  validates :is_default, presence: true, length: { maximum: 1 }
  validates :is_internal, presence: true, length: { maximum: 1 }

  has_many :jurisdictions, primary_key: :jurisdiction_class, 
           foreign_key: :jurisdiction_class, dependent: :destroy

  def is_default_enum
    yes_or_no
  end

  def is_internal_enum
    yes_or_no
  end

  rails_admin do
    object_label_method :jurisdiction_class
  end
end
