class CreateJurisdictions < ActiveRecord::Migration
  def change
    create_table :jurisdictions, id: false do |t|
      t.integer :jurisdiction
      t.integer :description_code
      t.integer :jurisdiction_class
    end
  end
end
