class RemoveUserRefFromTenants < ActiveRecord::Migration
  def change
    remove_reference :tenants, :user, index: true
  end
end
