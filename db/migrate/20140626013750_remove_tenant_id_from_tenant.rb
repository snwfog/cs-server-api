class RemoveTenantIdFromTenant < ActiveRecord::Migration
  def change
    remove_column :tenants, :tenant_id, :string
  end
end
