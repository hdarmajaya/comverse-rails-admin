class CreateRateClassDescrs < ActiveRecord::Migration
  def change
    create_table :rate_class_descr, id: false do |t|
      t.integer :rate_class
      t.integer :is_default
      t.integer :description_code
      t.integer :level_code
    end
  end
end
