class RenameServiceConnectionParameterToParameter < ActiveRecord::Migration
  def change
    rename_column :service_connections, :service_connection_parameter, :parameter
  end
end
