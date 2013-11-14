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

require 'test_helper'

class UsagePointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
