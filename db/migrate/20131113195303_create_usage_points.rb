class CreateUsagePoints < ActiveRecord::Migration
  def change
    create_table :usage_points, id: false do |t|
      t.integer :point_id
      t.integer :point_type
      t.integer :point_category
      t.string :point
      t.string :point_region
      t.integer :is_a_prefix
      t.integer :point_status
      t.integer :point_class
      t.string :point_tax_code
      t.string :point_city
      t.string :point_state_abbr
      t.string :point_zip
      t.integer :country_code
      t.string :point_county
      t.integer :point_coordinate_x
      t.integer :point_coordinate_y
      t.integer :provider_id
      t.date :active_dt
      t.date :inactive_dt
      t.integer :is_international
      t.integer :arch_flag
      t.string :access_region
      t.integer :point_coordinate_x_min
      t.integer :point_coordinate_y_min
      t.integer :point_coordinate_type
      t.integer :mobile_zone
    end
  end
end
