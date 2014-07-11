class AddDefaultValueToUsersPassword < ActiveRecord::Migration
  def up
    change_column :users, :password, :string, :default => nil
    remove_column :users, :crypted_password
  end

  def down
    change_column :users, :password, :string
    add_column :users, :crypted_password, :string, :default => nil
  end
end
