class RenameBooleanAttributes < ActiveRecord::Migration
  def change
    rename_column :roles, :used_for_new_account_request, :is_used_for_new_account_request
    rename_column :roles, :least_privileged, :is_least_privileged
    rename_column :roles, :most_privileged, :is_most_privileged

    rename_column :service_connections, :status_checked, :is_status_checked
    rename_column :service_connections, :usage_enabled, :is_usage_enabled
    rename_column :service_connections, :metrics_enabled, :is_metrics_enabled

    rename_column :tenant_policies, :ldap_self_request, :is_ldap_self_request
    rename_column :tenant_policies, :db_self_request, :is_db_self_request
    rename_column :tenant_policies, :account_request_approval_required, :is_account_request_approval_required
    rename_column :tenant_policies, :account_request_activation_required, :is_account_request_activation_required
    rename_column :tenant_policies, :reset_password_on_first_login, :is_reset_password_on_first_login

    rename_column :tenants, :db_authentication, :is_db_authentication
    rename_column :tenants, :ldap_authentication, :is_ldap_authentication
  end
end
