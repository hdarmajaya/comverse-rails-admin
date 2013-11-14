# == Schema Information
#
# Table name: usage_points
#
#  point_id               :integer          primary key
#  point_type             :integer
#  point_category         :integer
#  point                  :string(255)
#  point_region           :string(255)
#  is_a_prefix            :integer
#  point_status           :integer
#  point_class            :integer
#  point_tax_code         :string(255)
#  point_city             :string(255)
#  point_state_abbr       :string(255)
#  point_zip              :string(255)
#  country_code           :integer
#  point_county           :string(255)
#  point_coordinate_x     :integer
#  point_coordinate_y     :integer
#  provider_id            :integer
#  active_dt              :date
#  inactive_dt            :date
#  is_international       :integer
#  arch_flag              :integer
#  access_region          :string(255)
#  point_coordinate_x_min :integer
#  point_coordinate_y_min :integer
#  point_coordinate_type  :integer
#  mobile_zone            :integer
#

class UsagePoint < ActiveRecord::Base
  attr_accessible :access_region, :active_dt, :arch_flag, :country_code, 
    :inactive_dt, :is_a_prefix, :is_international, :mobile_zone, :point, 
    :point_category, :point_city, :point_class, :point_coordinate_type, 
    :point_coordinate_x, :point_coordinate_x_min, :point_coordinate_y, 
    :point_coordinate_y_min, :point_county, :point_id, :point_region, 
    :point_state_abbr, :point_status, :point_tax_code, :point_type, 
    :point_zip, :provider_id

  self.primary_key = :point_id

  validates :point_id, presence: true, length: { maximum: 10 }
  validates :point_type, presence: true, length: { maximum: 3 }
  validates :point_category, presence: true , length: { maximum: 6 }
  validates :point, presence: true , length: { maximum: 72 }
  validates :point_region, presence: true, length: { maximum: 24 }
  validates :is_a_prefix, presence: true , length: { maximum: 3 }
  validates :point_status, presence: true , length: { maximum: 3 }
  validates :point_class, presence: true , length: { maximum: 10}
  validates :point_tax_code, length: { maximum: 15 }
  validates :point_city, length: { maximum: 105 }
  validates :point_state_abbr, length: { maximum: 6 }
  validates :point_zip, length: { maximum: 16 }
  validates :country_code, length: { maximum: 6 }
  validates :point_county, length: { maximum: 84 }
  validates :point_coordinate_x, length: { maximum: 10 }
  validates :point_coordinate_y, length: { maximum: 10 }
  validates :provider_id, length: { maximum: 10 }
  validates :active_dt, presence: true
  validates :is_international, presence: true, length: { maximum: 3 }
  validates :arch_flag, presence: true, length: { maximum: 1 }
  validates :access_region, length: { maximum: 15 }
  validates :point_coordinate_x_min, length: { maximum: 10 }
  validates :point_coordinate_y_min, length: { maximum: 10 }
  validates :point_coordinate_type, length: { maximum: 3 }
  validates :mobile_zone, length: { maximum: 10 }

  belongs_to :mobile_zone_ref, foreign_key: :mobile_zone
end
