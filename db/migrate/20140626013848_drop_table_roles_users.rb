class DropTableRolesUsers < ActiveRecord::Migration
  def change
    drop_join_table :users, :roles
  end
end
