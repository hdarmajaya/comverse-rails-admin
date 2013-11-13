class CreateUsageJurisdictions < ActiveRecord::Migration
  def change
    create_table :usage_jurisdiction, id: false do |t|
      t.integer :seqnum
      t.integer :jurisdiction
      t.integer :element_id
      t.integer :type_id_usg
      t.integer :rate_class
      t.integer :equip_type_code
      t.integer :equip_class_code
      t.integer :class_of_service_code
      t.string :point_origin
      t.string :point_target
      t.integer :point_class_origin
      t.integer :point_class_target
      t.string :point_region_origin
      t.string :point_region_target
      t.string :state_origin
      t.integer :state_origin_exclude
      t.string :state_target
      t.integer :state_target_exclude
      t.integer :exclude_group
      t.string :access_region_origin
      t.string :access_region_target
      t.integer :priority
      t.integer :country_code_origin
      t.integer :country_code_target
      t.date :active_dt
      t.date :inactive_dt
      t.integer :bill_class
      t.integer :zone_class
    end
  end
end
