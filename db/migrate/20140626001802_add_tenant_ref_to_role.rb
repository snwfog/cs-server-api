class AddTenantRefToRole < ActiveRecord::Migration
  def change
    add_belongs_to :roles, :tenant, index: true
  end
end
