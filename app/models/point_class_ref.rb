# == Schema Information
#
# Table name: point_class_ref
#
#  point_class :integer          primary key
#  is_default  :integer
#  is_internal :integer
#

class PointClassRef < ActiveRecord::Base
  include SharedMethods

  attr_accessible :is_default, :is_internal, :point_class

  self.table_name = :point_class_ref
  self.primary_key = :point_class

  validates :point_class, presence: true, length: { maximum: 10 },
            uniqueness: true
  validates :is_default, presence: true, length: { maximum: 1 }
  validates :is_internal, presence: true, length: { maximum: 1 }

  has_many :point_class_values, foreign_key: :point_class, dependent: :delete_all

  def is_default_enum
    yes_or_no
  end

  def is_internal_enum
    yes_or_no
  end

  rails_admin do
    object_label_method :point_class
  end
end
