class CreateUsageTypes < ActiveRecord::Migration
  def change
    create_table :usage_types, id: false do |t|
      t.integer :type_id_usg
      t.integer :guide_to
      t.integer :point_category
      t.integer :origin_country_dial_code_req
      t.integer :tax_code_origin_req
      t.integer :tax_code_target_req
      t.integer :description_code
      t.integer :tax_class
      t.integer :tax_location_usg
      t.integer :tax_location_outcollect
      t.integer :usg_class
      t.integer :free_usg
      t.integer :element_id
      t.integer :product_line_id
      t.integer :bill_aggr_level
      t.integer :derive_jurisdiction
      t.integer :units_indicator
      t.integer :ratable_unit_class
      t.integer :duration_flag
      t.integer :derive_distance_units
      t.integer :vh_minor_threshold
      t.integer :distance_units_indicator
      t.integer :guide_to_provider
      t.integer :is_prerated
      t.integer :keep_running_total
      t.integer :rounding_method
      t.integer :raw_units_type
      t.integer :use_rate_class
      t.integer :use_bill_class
      t.integer :use_jurisdiction
      t.integer :use_point_class_origin
      t.integer :use_point_class_target
      t.integer :use_provider_class
      t.integer :use_rate_period
      t.integer :use_element_id
      t.integer :use_equip_type_code
      t.integer :use_equip_class_code
      t.integer :use_class_of_service_code
      t.integer :use_distance_band_id
      t.integer :use_default_rate_type
      t.integer :rate_currency_code
      t.integer :rate_currency_location
      t.integer :rate_period_rounding
      t.integer :rate_minimum_duration
      t.integer :use_component_id
      t.integer :min_billing_units
      t.integer :consolidate_usage
      t.integer :consolidate_usage
      t.integer :is_late_fee_exempt
      t.integer :rating_method
      t.integer :use_zone_class
    end
  end
end
