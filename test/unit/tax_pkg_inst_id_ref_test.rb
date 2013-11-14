# == Schema Information
#
# Table name: tax_pkg_inst_id_ref
#
#  tax_pkg_inst_id    :integer          primary key
#  tax_pkg_type       :integer
#  pkg_order          :integer
#  basic_days         :integer
#  is_binned          :integer
#  is_distributed     :integer
#  is_franchise       :integer
#  is_gui_pretax      :integer
#  exclude_charge     :integer
#  rounding_method    :integer
#  tax_type           :integer
#  is_default         :integer
#  is_internal        :integer
#  is_graduated       :integer
#  tax_zero_charge    :integer
#  rounding_factor    :integer
#  bin_rounding       :integer
#  is_late_fee_exempt :integer
#  is_inclusive       :integer
#

require 'test_helper'

class TaxPkgInstIdRefTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
