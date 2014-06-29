class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :used_for_new_account_request, :least_privileged, :most_privileged, :is_default
end
