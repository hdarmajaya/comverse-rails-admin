class CreateJurisdictionClassRefs < ActiveRecord::Migration
  def change
    create_table :jurisdiction_class_ref, id: false do |t|
      t.integer :jurisdiction_class
      t.integer :is_default
      t.integer :is_internal
    end
  end
end
