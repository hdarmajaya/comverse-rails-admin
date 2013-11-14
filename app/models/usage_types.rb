# == Schema Information
#
# Table name: usage_types
#
#  type_id_usg                  :integer          primary key
#  guide_to                     :integer
#  point_category               :integer
#  origin_country_dial_code_req :integer
#  tax_code_origin_req          :integer
#  tax_code_target_req          :integer
#  description_code             :integer
#  tax_class                    :integer
#  tax_location_usg             :integer
#  tax_location_outcollect      :integer
#  usg_class                    :integer
#  free_usg                     :integer
#  element_id                   :integer
#  product_line_id              :integer
#  bill_aggr_level              :integer
#  derive_jurisdiction          :integer
#  units_indicator              :integer
#  ratable_unit_class           :integer
#  duration_flag                :integer
#  derive_distance_units        :integer
#  vh_minor_threshold           :integer
#  distance_units_indicator     :integer
#  guide_to_provider            :integer
#  is_prerated                  :integer
#  keep_running_total           :integer
#  rounding_method              :integer
#  raw_units_type               :integer
#  use_rate_class               :integer
#  use_bill_class               :integer
#  use_jurisdiction             :integer
#  use_point_class_origin       :integer
#  use_point_class_target       :integer
#  use_provider_class           :integer
#  use_rate_period              :integer
#  use_element_id               :integer
#  use_equip_type_code          :integer
#  use_equip_class_code         :integer
#  use_class_of_service_code    :integer
#  use_distance_band_id         :integer
#  use_default_rate_type        :integer
#  rate_currency_code           :integer
#  rate_currency_location       :integer
#  rate_period_rounding         :integer
#  rate_minimum_duration        :integer
#  use_component_id             :integer
#  min_billing_units            :integer
#  consolidate_usage            :integer
#  is_late_fee_exempt           :integer
#  rating_method                :integer
#  use_zone_class               :integer
#

class UsageTypes < ActiveRecord::Base
  include SharedMethods

  attr_accessible :bill_aggr_level, :consolidate_usage, :consolidate_usage, 
    :derive_distance_units, :derive_jurisdiction, :description_code, 
    :distance_units_indicator, :duration_flag, :element_id, :free_usg, 
    :guide_to, :guide_to_provider, :is_late_fee_exempt, :is_prerated, 
    :keep_running_total, :min_billing_units, :origin_country_dial_code_req, 
    :point_category, :product_line_id, :ratable_unit_class, :rate_currency_code, 
    :rate_currency_location, :rate_minimum_duration, :rate_period_rounding, 
    :rating_method, :raw_units_type, :rounding_method, :tax_class, 
    :tax_code_origin_req, :tax_code_target_req, :tax_location_outcollect, 
    :tax_location_usg, :type_id_usg, :units_indicator, :use_bill_class, 
    :use_class_of_service_code, :use_component_id, :use_default_rate_type, 
    :use_distance_band_id, :use_element_id, :use_equip_class_code, 
    :use_equip_type_code, :use_jurisdiction, :use_point_class_origin, 
    :use_point_class_target, :use_provider_class, :use_rate_class, 
    :use_rate_period, :use_zone_class, :usg_class, :vh_minor_threshold

  self.primary_key = :type_id_usg

  validates :type_id_usg, presence: true, length: { maximum: 10 }, uniqueness: true
  validates :guide_to, presence: true, length: { maximum: 3 }
  validates :point_category, presence: true, length: { maximum: 6 }
  validates :origin_country_dial_code_req, presence: true, length: { maximum: 3 }
  validates :tax_code_origin_req, presence:true, length: { maximum: 3 }
  validates :tax_code_target_req, presence:true, length: { maximum: 3 }
  validates :description_code, presence:true, length: { maximum: 10 }
  validates :tax_class, length: { maximum: 10 }
  validates :tax_location_usg, presence:true, length: { maximum: 3 }
  validates :tax_location_outcollect, length: { maximum: 3 }
  validates :usg_class, length: { maximum: 6 }
  validates :free_usg, presence:true, length: { maximum: 1 }
  validates :element_id, length: { maximum: 10 }
  validates :product_line_id, length: { maximum: 6 }
  validates :bill_aggr_level, length: { maximum: 10 }
  validates :derive_jurisdiction, length: { maximum: 3 }
  validates :units_indicator, presence:true, length: { maximum: 3 }
  validates :ratable_unit_class, presence:true, length: { maximum: 6 }
  validates :duration_flag, presence:true, length: { maximum: 1 }
  validates :derive_distance_units, length: { maximum: 3 }
  validates :vh_minor_threshold, presence:true, length: { maximum: 6 }
  validates :distance_units_indicator, presence:true, length: { maximum: 3 }
  validates :guide_to_provider, presence:true, length: { maximum: 3 }
  validates :is_prerated, presence:true, length: { maximum: 1 }
  validates :keep_running_total, presence:true, length: { maximum: 1 }
  validates :rounding_method, presence:true, length: { maximum: 3 }
  validates :raw_units_type, presence:true, length: { maximum: 6 }
  validates :use_rate_class, presence:true, length: { maximum: 3 }
  validates :use_bill_class, presence:true, length: { maximum: 3 }
  validates :use_jurisdiction, presence:true, length: { maximum: 3 }
  validates :use_point_class_origin, presence:true, length: { maximum: 3 }
  validates :use_point_class_target, presence:true, length: { maximum: 3 }
  validates :use_provider_class, presence:true, length: { maximum: 3 }
  validates :use_rate_period, presence:true, length: { maximum: 3 }
  validates :use_element_id, presence:true, length: { maximum: 3 }
  validates :use_equip_type_code, presence:true, length: { maximum: 3 }
  validates :use_equip_class_code, presence:true, length: { maximum: 3 }
  validates :use_class_of_service_code, presence:true, length: { maximum: 3 }
  validates :use_distance_band_id, presence:true, length: { maximum: 3 }
  validates :use_default_rate_type, length: { maximum: 3 }
  validates :rate_currency_code, length: { maximum: 6 }
  validates :rate_currency_location, presence:true, length: { maximum: 6 }
  validates :rate_period_rounding, presence:true, length: { maximum: 3 }
  validates :rate_minimum_duration, presence:true, length: { maximum: 3 }
  validates :use_component_id, presence:true, length: { maximum: 3 }
  validates :min_billing_units, length: { maximum: 18 }
  validates :consolidate_usage, presence:true, length: { maximum: 1 }
  validates :consolidate_usage, presence:true, length: { maximum: 10 }
  validates :is_late_fee_exempt, presence:true, length: { maximum: 1 }
  validates :rating_method, presence:true, length: { maximum: 10 }
  validates :use_zone_class, length: { maximum: 3 }

  has_one :usage_type_group, foreign_key: :type_id_usg, dependent: :destroy

  def is_late_fee_exempt_enum
    yes_or_no
  end

  def is_prerated_enum
    yes_or_no
  end

  rails_admin do
    object_label_method :type_id_usg
  end
end
