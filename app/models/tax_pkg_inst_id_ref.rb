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

class TaxPkgInstIdRef < ActiveRecord::Base
  include SharedMethods

  attr_accessible :basic_days, :bin_rounding, :exclude_charge, :is_binned, 
    :is_default, :is_distributed, :is_franchise, :is_graduated, :is_gui_pretax, 
    :is_inclusive, :is_internal, :is_late_fee_exempt, :pkg_order, :rounding_factor, 
    :rounding_method, :tax_pkg_inst_id, :tax_pkg_type, :tax_type, :tax_zero_charge

  self.table_name = :tax_pkg_inst_id_ref
  self.primary_key = :tax_pkg_inst_id

  validates :tax_pkg_inst_id, presence: true, length: { maximum: 10 }, 
            uniqueness: true
  validates :tax_pkg_type, presence: true , length: { maximum: 6 }
  validates :pkg_order, presence: true, length: { maximum: 6 }
  validates :basic_days, presence: true, length: { maximum: 6 }
  validates :is_binned, presence: true, length: { maximum: 3 }
  validates :is_distributed, presence: true, length: { maximum: 1 }
  validates :is_franchise, presence: true, length: { maximum: 1 }
  validates :is_gui_pretax, presence: true, length: { maximum: 1 }
  validates :exclude_charge, presence: true, length: { maximum: 1 }
  validates :rounding_method, presence: true, length: { maximum: 3 }
  validates :tax_type, presence: true, length: { maximum: 6 }
  validates :is_default, presence: true, length: { maximum: 1 }
  validates :is_internal, presence: true, length: { maximum: 1 }
  validates :is_graduated, presence: true, length: { maximum: 3 }
  validates :tax_zero_charge, presence: true, length: { maximum: 3 }
  validates :rounding_factor, presence: true, length: { maximum: 6 }
  validates :bin_rounding, presence: true, length: { maximum: 1 }
  validates :is_late_fee_exempt, presence: true, length: { maximum: 1 }
  validates :is_inclusive, presence: true, length: { maximum: 3 }

  has_one :tax_pkg_inst_id_value, foreign_key: :tax_pkg_inst_id, dependent: :destroy
  has_one :tax_rates_vat, foreign_key: :tax_pkg_inst_id, dependent: :destroy

  def is_binned_enum
    yes_or_no
  end

  def is_distributed_enum
    yes_or_no
  end

  def is_franchise_enum
    yes_or_no
  end

  def is_default_enum
    yes_or_no
  end

  def is_graduated_enum
    yes_or_no
  end

  def is_gui_pretax_enum
    yes_or_no
  end

  def is_inclusive_enum
    yes_or_no
  end

  def is_internal_enum
    yes_or_no
  end

  def is_late_fee_exempt_enum
    yes_or_no
  end

  def exclude_charge_enum
    yes_or_no
  end

  def bin_rounding_enum
    yes_or_no
  end

  def pkg_order_enum
    yes_or_no
  end

  def tax_zero_charge_enum
    yes_or_no
  end

  def basic_days_enum
    yes_or_no
  end

  def rounding_factor_enum
    yes_or_no
  end

  rails_admin do
    object_label_method :tax_pkg_inst_id
  end
end
