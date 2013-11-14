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

require 'test_helper'

class UsageTypesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
