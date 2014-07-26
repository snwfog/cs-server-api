class AddNestedSetToTenants < ActiveRecord::Migration
  def change
    add_column :tenants, :parent_id, :integer
    add_column :tenants, :lft, :integer
    add_column :tenants, :rgt, :integer
    add_column :tenants, :depth, :integer

    add_index :tenants, :rgt
  end
end
