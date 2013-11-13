class CreateMobileZoneRefs < ActiveRecord::Migration
  def change
    create_table :mobile_zone_ref, id: false do |t|
      t.integer :mobile_zone
      t.integer :zone_parent
      t.integer :is_default
      t.integer :is_internal
    end
  end
end
