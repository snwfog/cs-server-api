class AddUserRefToTenant < ActiveRecord::Migration
  def change
    add_reference :tenants, :tenant, index: true
  end
end
