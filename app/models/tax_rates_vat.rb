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

class TaxRatesVat < ActiveRecord::Base
  include SharedMethods

  attr_accessible :active_date, :billing_frequency, :currency_code, :fixed_amt, 
    :inactive_date, :range_terminus, :rate, :tax_class, :tax_pkg_inst_id, 
    :tax_type_code

  self.table_name = :tax_rates_vat
  self.primary_key = :tax_pkg_inst_id

  validates :tax_pkg_inst_id, presence: true, length: { maximum: 10 }, uniqueness: true
  validates :currency_code , length: { maximum: 6 }
  validates :fixed_amt , length: { maximum: 18 }
  validates :tax_class, presence: true, length: { maximum: 10 }
  validates :rate, presence: true, length: { maximum: 10 }
  validates :active_date, presence: true 
  validates :tax_type_code, presence: true, length: { maximum: 10 }
  validates :billing_frequency, length: { maximum: 3 }
  validates :range_terminus, length: { maximum: 18 }

  belongs_to :tax_pkg_inst_id_ref, primary_key: :tax_pkg_inst_id,
             foreign_key: :tax_pkg_inst_id

  def fixed_amt_enum
    yes_or_no
  end
end
