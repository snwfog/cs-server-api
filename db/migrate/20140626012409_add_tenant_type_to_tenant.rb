class AddTenantTypeToTenant < ActiveRecord::Migration
  def change
    add_column :tenants, :tenant_type, :integer
  end
end
