class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description_key, :is_system_only
end
