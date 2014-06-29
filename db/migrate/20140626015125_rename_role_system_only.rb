class RenameRoleSystemOnly < ActiveRecord::Migration
  def change
    rename_column :permissions, :system_only, :is_system_only
  end
end
