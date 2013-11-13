class CreateTaxAssignments < ActiveRecord::Migration
  def change
    create_table :tax_assignments, id: false do |t|
      t.integer :account_category
      t.integer :brand_id
      t.integer :country_code
      t.integer :state_code
      t.integer :county_code
      t.integer :city_code
      t.integer :franchise_code
      t.integer :charge_elt_type
      t.integer :charge_elt_id
      t.integer :provider_id
      t.integer :tax_pkg_inst_id
    end
  end
end
