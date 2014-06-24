class CreateTenantPolicies < ActiveRecord::Migration
  def change
    create_table :tenant_policies do |t|
      t.boolean :ldap_self_request
      t.boolean :db_self_request
      t.boolean :account_request_approval_required
      t.boolean :account_request_activation_required
      t.boolean :reset_password_on_first_login

      t.timestamps
    end
  end
end
