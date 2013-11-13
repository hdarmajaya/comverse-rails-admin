class CreateTaxPkgInstIdRefs < ActiveRecord::Migration
  def change
    create_table :tax_pkg_inst_id_ref, id: false do |t|
      t.integer :tax_pkg_inst_id
      t.integer :tax_pkg_type
      t.integer :pkg_order
      t.integer :basic_days
      t.integer :is_binned
      t.integer :is_distributed
      t.integer :is_franchise
      t.integer :is_gui_pretax
      t.integer :exclude_charge
      t.integer :rounding_method
      t.integer :tax_type
      t.integer :is_default
      t.integer :is_internal
      t.integer :is_graduated
      t.integer :tax_zero_charge
      t.integer :rounding_factor
      t.integer :bin_rounding
      t.integer :is_late_fee_exempt
      t.integer :is_inclusive
    end
  end
end
