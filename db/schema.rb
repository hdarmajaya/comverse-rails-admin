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

ActiveRecord::Schema.define(:version => 20131113142517) do

  create_table "descriptions", :id => false, :force => true do |t|
    t.integer "description_code"
    t.integer "language_code"
    t.integer "description_group"
    t.string  "description_text"
    t.string  "short_description_text"
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

  create_table "usage_points_text", :id => false, :force => true do |t|
    t.integer "point_id"
    t.integer "language_code"
    t.string  "display_value"
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
