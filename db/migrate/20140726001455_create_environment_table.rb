class CreateEnvironmentTable < ActiveRecord::Migration
  def change
    create_table :environment_tables do |t|
      t.string :name
      t.string :description
      t.references :tenant, index: true
      t.references :service_connection, index: true
      t.integer :membership
    end
  end
end
