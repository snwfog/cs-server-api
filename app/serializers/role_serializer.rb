class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :is_used_for_new_account_request,
             :is_least_privileged, :is_most_privileged, :is_default
end
