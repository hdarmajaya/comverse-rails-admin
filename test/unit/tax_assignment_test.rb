# == Schema Information
#
# Table name: tax_assignments
#
#  account_category :integer
#  brand_id         :integer
#  country_code     :integer
#  state_code       :integer
#  county_code      :integer
#  city_code        :integer
#  franchise_code   :integer
#  charge_elt_type  :integer
#  charge_elt_id    :integer          primary key
#  provider_id      :integer
#  tax_pkg_inst_id  :integer
#

require 'test_helper'

class TaxAssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
