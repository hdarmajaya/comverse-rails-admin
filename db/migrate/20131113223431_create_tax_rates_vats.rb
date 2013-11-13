class CreateTaxRatesVats < ActiveRecord::Migration
  def change
    create_table :tax_rates_vat, id: false do |t|
      t.integer :tax_pkg_inst_id
      t.integer :currency_code
      t.integer :fixed_amt
      t.integer :tax_class
      t.integer :rate
      t.date :active_date
      t.date :inactive_date
      t.integer :tax_type_code
      t.integer :billing_frequency
      t.integer :range_terminus
    end
  end
end
