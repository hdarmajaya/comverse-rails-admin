# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131113214018) do

  create_table "descriptions", :id => false, :force => true do |t|
    t.integer "description_code"
    t.integer "language_code"
    t.integer "description_group"
    t.string  "description_text"
    t.string  "short_description_text"
  end

  create_table "jurisdictions", :id => false, :force => true do |t|
    t.integer "jurisdiction"
    t.integer "description_code"
    t.integer "jurisdiction_class"
  end

  create_table "mobile_zone_ref", :id => false, :force => true do |t|
    t.integer "mobile_zone"
    t.integer "zone_parent"
    t.integer "is_default"
    t.integer "is_internal"
  end

  create_table "point_class_ref", :id => false, :force => true do |t|
    t.integer "point_class"
    t.integer "is_default"
    t.integer "is_internal"
  end

  create_table "point_class_values", :id => false, :force => true do |t|
    t.integer "point_class"
    t.integer "language_code"
    t.string  "short_display"
    t.string  "display_value"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "rate_class_descr", :id => false, :force => true do |t|
    t.integer "rate_class"
    t.integer "is_default"
    t.integer "description_code"
    t.integer "level_code"
  end

  create_table "tax_assignments", :id => false, :force => true do |t|
    t.integer "account_category"
    t.integer "brand_id"
    t.integer "country_code"
    t.integer "state_code"
    t.integer "county_code"
    t.integer "city_code"
    t.integer "franchise_code"
    t.integer "charge_elt_type"
    t.integer "charge_elt_id"
    t.integer "provider_id"
    t.integer "tax_pkg_inst_id"
  end

  create_table "usage_jurisdiction", :id => false, :force => true do |t|
    t.integer "seqnum"
    t.integer "jurisdiction"
    t.integer "element_id"
    t.integer "type_id_usg"
    t.integer "rate_class"
    t.integer "equip_type_code"
    t.integer "equip_class_code"
    t.integer "class_of_service_code"
    t.string  "point_origin"
    t.string  "point_target"
    t.integer "point_class_origin"
    t.integer "point_class_target"
    t.string  "point_region_origin"
    t.string  "point_region_target"
    t.string  "state_origin"
    t.integer "state_origin_exclude"
    t.string  "state_target"
    t.integer "state_target_exclude"
    t.integer "exclude_group"
    t.string  "access_region_origin"
    t.string  "access_region_target"
    t.integer "priority"
    t.integer "country_code_origin"
    t.integer "country_code_target"
    t.date    "active_dt"
    t.date    "inactive_dt"
    t.integer "bill_class"
    t.integer "zone_class"
  end

  create_table "usage_points", :id => false, :force => true do |t|
    t.integer "point_id"
    t.integer "point_type"
    t.integer "point_category"
    t.string  "point"
    t.string  "point_region"
    t.integer "is_a_prefix"
    t.integer "point_status"
    t.integer "point_class"
    t.string  "point_tax_code"
    t.string  "point_city"
    t.string  "point_state_abbr"
    t.string  "point_zip"
    t.integer "country_code"
    t.string  "point_county"
    t.integer "point_coordinate_x"
    t.integer "point_coordinate_y"
    t.integer "provider_id"
    t.date    "active_dt"
    t.date    "inactive_dt"
    t.integer "is_international"
    t.integer "arch_flag"
    t.string  "access_region"
    t.integer "point_coordinate_x_min"
    t.integer "point_coordinate_y_min"
    t.integer "point_coordinate_type"
    t.integer "mobile_zone"
  end

  create_table "usage_points_text", :id => false, :force => true do |t|
    t.integer "point_id"
    t.integer "language_code"
    t.string  "display_value"
  end

  create_table "usage_type_groups", :id => false, :force => true do |t|
    t.integer "type_group_usg"
    t.integer "type_id_usg"
    t.integer "description_code"
  end

  create_table "usage_types", :id => false, :force => true do |t|
    t.integer "type_id_usg"
    t.integer "guide_to"
    t.integer "point_category"
    t.integer "origin_country_dial_code_req"
    t.integer "tax_code_origin_req"
    t.integer "tax_code_target_req"
    t.integer "description_code"
    t.integer "tax_class"
    t.integer "tax_location_usg"
    t.integer "tax_location_outcollect"
    t.integer "usg_class"
    t.integer "free_usg"
    t.integer "element_id"
    t.integer "product_line_id"
    t.integer "bill_aggr_level"
    t.integer "derive_jurisdiction"
    t.integer "units_indicator"
    t.integer "ratable_unit_class"
    t.integer "duration_flag"
    t.integer "derive_distance_units"
    t.integer "vh_minor_threshold"
    t.integer "distance_units_indicator"
    t.integer "guide_to_provider"
    t.integer "is_prerated"
    t.integer "keep_running_total"
    t.integer "rounding_method"
    t.integer "raw_units_type"
    t.integer "use_rate_class"
    t.integer "use_bill_class"
    t.integer "use_jurisdiction"
    t.integer "use_point_class_origin"
    t.integer "use_point_class_target"
    t.integer "use_provider_class"
    t.integer "use_rate_period"
    t.integer "use_element_id"
    t.integer "use_equip_type_code"
    t.integer "use_equip_class_code"
    t.integer "use_class_of_service_code"
    t.integer "use_distance_band_id"
    t.integer "use_default_rate_type"
    t.integer "rate_currency_code"
    t.integer "rate_currency_location"
    t.integer "rate_period_rounding"
    t.integer "rate_minimum_duration"
    t.integer "use_component_id"
    t.integer "min_billing_units"
    t.integer "consolidate_usage"
    t.integer "is_late_fee_exempt"
    t.integer "rating_method"
    t.integer "use_zone_class"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
