class RenameEnvironmentTableToEnvironment < ActiveRecord::Migration
  def change
    rename_table :environment_tables, :environments
  end
end
