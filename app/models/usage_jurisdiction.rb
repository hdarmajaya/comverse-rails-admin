# == Schema Information
#
# Table name: usage_jurisdiction
#
#  seqnum                :integer          primary key
#  jurisdiction          :integer
#  element_id            :integer
#  type_id_usg           :integer
#  rate_class            :integer
#  equip_type_code       :integer
#  equip_class_code      :integer
#  class_of_service_code :integer
#  point_origin          :string(255)
#  point_target          :string(255)
#  point_class_origin    :integer
#  point_class_target    :integer
#  point_region_origin   :string(255)
#  point_region_target   :string(255)
#  state_origin          :string(255)
#  state_origin_exclude  :integer
#  state_target          :string(255)
#  state_target_exclude  :integer
#  exclude_group         :integer
#  access_region_origin  :string(255)
#  access_region_target  :string(255)
#  priority              :integer
#  country_code_origin   :integer
#  country_code_target   :integer
#  active_dt             :date
#  inactive_dt           :date
#  bill_class            :integer
#  zone_class            :integer
#

class UsageJurisdiction < ActiveRecord::Base
  attr_accessible :access_region_origin, :access_region_target, :active_dt, 
    :bill_class, :class_of_service_code, :country_code_origin, :country_code_target, 
    :element_id, :equip_class_code, :equip_type_code, :exclude_group, :inactive_dt, 
    :jurisdiction, :point_class_origin, :point_class_target, :point_origin, 
    :point_region_origin, :point_region_target, :point_target, :priority, 
    :rate_class, :seqnum, :state_origin, :state_origin_exclude, :state_target, 
    :state_target_exclude, :type_id_usg, :zone_class

  self.table_name = :usage_jurisdiction
  self.primary_key = :seqnum

  validates :seqnum, presence: true, length: { maximum: 10 }   
  validates :jurisdiction, presence: true, length: { maximum: 10 }   
  validates :element_id, presence: true, length: { maximum: 10 }   
  validates :type_id_usg, presence: true, length: { maximum: 10 }   
  validates :rate_class, presence: true, length: { maximum: 6 }    
  validates :equip_type_code, presence: true, length: { maximum: 6 }    
  validates :equip_class_code, presence: true, length: { maximum: 6 }    
  validates :class_of_service_code, presence: true, length: { maximum: 6 }    
  validates :point_origin, length: { maximum: 72 } 
  validates :point_target, length: { maximum: 72 } 
  validates :point_class_origin, presence: true, length: { maximum: 10 }   
  validates :point_class_target, presence: true, length: { maximum: 10 }   
  validates :point_region_origin, length: { maximum: 24 }     
  validates :point_region_target, length: { maximum: 24 }     
  validates :state_origin, length: { maximum: 6 }      
  validates :state_origin_exclude, presence: true, length: { maximum: 1 }    
  validates :state_target, length: { maximum: 6 }      
  validates :state_target_exclude, presence: true, length: { maximum: 1 }    
  validates :exclude_group, length: { maximum: 6 }    
  validates :access_region_origin, length: { maximum: 15 } 
  validates :access_region_target, length: { maximum: 15 } 
  validates :priority, presence: true, length: { maximum: 10 }   
  validates :country_code_origin, presence: true, length: { maximum: 6 }    
  validates :country_code_target, presence: true, length: { maximum: 6 }    
  validates :active_dt, presence: true          
  validates :bill_class, presence: true, length: { maximum: 6 }    
  validates :zone_class, presence: true, length: { maximum: 3 }   

  #belongs_to :jurisdiction, primary_key: :jurisdiction, foreign_key: :jurisdiction
end
