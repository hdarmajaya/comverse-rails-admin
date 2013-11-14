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

require 'test_helper'

class UsageJurisdictionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
