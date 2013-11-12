class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions, id: false do |t|
      t.integer :description_code
      t.integer :language_code
      t.integer :description_group
      t.string :description_text
      t.string :short_description_text
    end
  end
end
