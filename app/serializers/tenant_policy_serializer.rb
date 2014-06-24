class TenantPolicySerializer < ActiveModel::Serializer
  attributes :id, :ldap_self_request, :db_self_request, :account_request_approval_required, :account_request_activation_required, :reset_password_on_first_login
end
