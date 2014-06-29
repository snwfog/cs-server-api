class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :lineage
      t.string :name
      t.string :hash_algorithm_name
      t.integer :hash_iteration
      t.string :entry_point
      t.string :image
      t.boolean :db_authentication
      t.boolean :ldap_authentication

      t.timestamps
    end
  end
end
