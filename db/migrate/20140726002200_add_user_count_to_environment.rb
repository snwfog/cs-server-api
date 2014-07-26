class AddUserCountToEnvironment < ActiveRecord::Migration
  def change
    add_column :environments, :users_count, :integer, default: 0, null: false
  end
end
