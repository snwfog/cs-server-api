class AddUuidToUser < ActiveRecord::Migration
  def change
    add_column :users, :approval_token, :string
  end
end
