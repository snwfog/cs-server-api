class CreateServiceAccounts < ActiveRecord::Migration
  def change
    create_table :service_accounts do |t|
      t.string :credential_one
      t.string :credential_two
      t.string :username
      t.string :native_type
      t.string :custom
      t.string :unique_id_for_service
      t.string :password
      t.string :is_assigned

      t.timestamps
    end
  end
end
