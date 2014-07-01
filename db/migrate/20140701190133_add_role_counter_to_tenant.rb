class AddRoleCounterToTenant < ActiveRecord::Migration
  def change
    add_column :tenants, :roles_count, :integer, default: 0, null: false
  end
end
