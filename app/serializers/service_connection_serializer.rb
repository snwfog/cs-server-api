class ServiceConnectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :creation_date, :type, :category,
             :service_connection_parameter, :last_usage_record,
             :is_status_checked, :is_usage_enabled, :is_metrics_enabled
end
