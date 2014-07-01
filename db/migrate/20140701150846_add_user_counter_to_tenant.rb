class AddUserCounterToTenant < ActiveRecord::Migration
  def change
    add_column :tenants, :users_count, :integer, default: 0, null: false
  end
end
