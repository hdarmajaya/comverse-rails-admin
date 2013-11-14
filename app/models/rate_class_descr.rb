# == Schema Information
#
# Table name: rate_class_descr
#
#  rate_class       :integer          primary key
#  is_default       :integer
#  description_code :integer
#  level_code       :integer
#

class RateClassDescr < ActiveRecord::Base
  include SharedMethods

  attr_accessible :description_code, :is_default, :level_code, :rate_class

  self.table_name = :rate_class_descr
  self.primary_key = :rate_class

  validates :rate_class, presence: true, length: { maximum: 6 }, uniqueness: true
  validates :is_default, presence: true, length: { maximum: 1 }
  validates :level_code, presence: true, length: { maximum: 3 }
  validates :description_code, presence: true, length: { maximum: 10 }

  def is_default_enum
    yes_or_no
  end
end
