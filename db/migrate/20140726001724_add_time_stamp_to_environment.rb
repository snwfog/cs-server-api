class AddTimeStampToEnvironment < ActiveRecord::Migration
  def change
    drop_table :environments
    create_table :environments do |t|
      t.string :name
      t.string :description
      t.references :tenant, index: true
      t.references :service_connection, index: true
      t.integer :membership

      t.timestamps
    end
  end
end
