class ServiceConnectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :creation_date, :type, :category, :service_connection_parameter, :last_usage_record, :status_checked, :usage_enabled, :metrics_enabled
end
