class CreateUsageTypeGroups < ActiveRecord::Migration
  def change
    create_table :usage_type_groups, id: false do |t|
      t.integer :type_group_usg
      t.integer :type_id_usg
      t.integer :description_code
    end
  end
end
