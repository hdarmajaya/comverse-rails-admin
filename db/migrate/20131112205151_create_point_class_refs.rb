class CreatePointClassRefs < ActiveRecord::Migration
  def change
    create_table :point_class_ref, id: false do |t|
      t.integer :point_class
      t.integer :is_default
      t.integer :is_internal
    end
  end
end
