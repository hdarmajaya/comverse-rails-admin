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

class TaxAssignment < ActiveRecord::Base
  attr_accessible :account_category, :brand_id, :charge_elt_id, :charge_elt_type, 
    :city_code, :country_code, :county_code, :franchise_code, :provider_id, 
    :state_code, :tax_pkg_inst_id

  self.primary_key = :charge_elt_id

  validates :charge_elt_id, presence: true, length: { maximum: 10 }, uniqueness: true
  validates :account_category, length: { maximum: 3 }
  validates :brand_id, length: { maximum: 6 }
  validates :country_code, length: { maximum: 6 }
  validates :state_code, length: { maximum: 6 }
  validates :county_code, length: { maximum: 6 }
  validates :city_code, length: { maximum: 6 }
  validates :franchise_code, length: { maximum: 6 }
  validates :charge_elt_type, length: { maximum: 6 }
  validates :provider_id, length: { maximum: 10 }
  validates :tax_pkg_inst_id, presence: true, length: { maximum: 10 }

end
