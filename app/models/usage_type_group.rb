# == Schema Information
#
# Table name: usage_type_groups
#
#  type_group_usg   :integer
#  type_id_usg      :integer          primary key
#  description_code :integer
#

class UsageTypeGroup < ActiveRecord::Base
  attr_accessible :description_code, :type_group_usg, :type_id_usg

  self.primary_key = :type_id_usg

  validates :type_id_usg, presence: true, length: { maximum: 6 }, uniqueness: true
  validates :type_group_usg, presence: true, length: { maximum: 10 }
  validates :description_code, presence: true, length: { maximum: 10 }

  belongs_to :usage_types, primary_key: :type_id_usg, foreign_key: :type_id_usg
end
