class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description_key, :system_only
end
