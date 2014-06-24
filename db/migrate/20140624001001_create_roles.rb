class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :description
      t.boolean :used_for_new_account_request
      t.boolean :least_privileged
      t.boolean :most_privileged
      t.boolean :is_default

      t.timestamps
    end
  end
end
