class CreateTaxPkgInstIdValues < ActiveRecord::Migration
  def change
    create_table :tax_pkg_inst_id_values, id: false do |t|
      t.integer :tax_pkg_inst_id
      t.integer :language_code
      t.string :short_display
      t.string :display_value
    end
  end
end
