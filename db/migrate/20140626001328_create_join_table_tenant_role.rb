class CreateJoinTableTenantRole < ActiveRecord::Migration
  def change
    create_join_table :tenants, :roles do |t|
      # t.index [:tenant_id, :role_id]
      # t.index [:role_id, :tenant_id]
    end
  end
end
