class CreateServiceConnections < ActiveRecord::Migration
  def change
    create_table :service_connections do |t|
      t.string :name
      t.string :creation_date
      t.string :type
      t.string :category
      t.text :service_connection_parameter
      t.datetime :last_usage_record
      t.boolean :status_checked
      t.boolean :usage_enabled
      t.boolean :metrics_enabled

      t.timestamps
    end
  end
end
