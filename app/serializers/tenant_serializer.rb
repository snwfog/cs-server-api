class TenantSerializer < ActiveModel::Serializer
  attributes :id, :lineage, :name, :hash_algorithm_name, :hash_iteration, :entry_point, :image, :db_authentication, :ldap_authentication
end
