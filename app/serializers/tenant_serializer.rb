class TenantSerializer < ActiveModel::Serializer
  attributes :id, :lineage, :name, :hash_algorithm_name,
             :hash_iteration, :entry_point, :image,
             :is_db_authentication, :is_ldap_authentication
end
