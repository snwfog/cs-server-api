class TenantPolicySerializer < ActiveModel::Serializer
  attributes :id, :is_ldap_self_request, :is_db_self_request,
             :is_account_request_approval_required,
             :is_account_request_activation_required,
             :is_reset_password_on_first_login
end
