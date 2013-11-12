class CreatePointClassValues < ActiveRecord::Migration
  def change
    create_table :point_class_values, id: false do |t|
      t.integer :point_class
      t.integer :language_code
      t.string :short_display
      t.string :display_value
    end
  end
end
