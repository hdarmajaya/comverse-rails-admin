class CreateUsagePointsTexts < ActiveRecord::Migration
  def change
    create_table :usage_points_text, id: false do |t|
      t.integer :point_id
      t.integer :language_code
      t.string :display_value
    end
  end
end
