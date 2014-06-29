class RemoveJoinTableTenantRole < ActiveRecord::Migration
  def change
    drop_join_table :tenants, :roles
  end
end
