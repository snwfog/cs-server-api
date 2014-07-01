class ServiceAccountSerializer < ActiveModel::Serializer
  attributes :id, :credential_one, :credential_two, :username, :native_type,
             :custom, :unique_id_for_service, :password, :is_assigned
end
