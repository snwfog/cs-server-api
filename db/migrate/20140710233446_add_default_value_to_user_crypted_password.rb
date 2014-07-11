class AddDefaultValueToUserCryptedPassword < ActiveRecord::Migration
  def up
    change_column :users, :crypted_password, :string, default: nil
  end

  def down
    change_column :users, :crypted_password, :string
  end
end
