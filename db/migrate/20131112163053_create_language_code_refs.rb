class CreateLanguageCodeRefs < ActiveRecord::Migration
  def change
    create_table :language_code_ref, id: false do |t|
      t.integer :language_code
      t.integer :is_default
      t.integer :is_internal
    end
  end
end
