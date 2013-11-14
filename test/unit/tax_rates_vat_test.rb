# == Schema Information
#
# Table name: tax_rates_vat
#
#  tax_pkg_inst_id   :integer          primary key
#  currency_code     :integer
#  fixed_amt         :integer
#  tax_class         :integer
#  rate              :integer
#  active_date       :date
#  inactive_date     :date
#  tax_type_code     :integer
#  billing_frequency :integer
#  range_terminus    :integer
#

require 'test_helper'

class TaxRatesVatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
