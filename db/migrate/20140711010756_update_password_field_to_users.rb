class UpdatePasswordFieldToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :password
    add_column :users, :crypted_password, :string, null: false
  end
end
