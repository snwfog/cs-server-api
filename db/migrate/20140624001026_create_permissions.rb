class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :description_key
      t.boolean :system_only

      t.timestamps
    end
  end
end
