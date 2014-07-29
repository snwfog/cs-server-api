class AddChildrenCountToTenants < ActiveRecord::Migration
  def change
    add_column :tenants, :children_count, :integer, default: 0, null: false
  end
end
