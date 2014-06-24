class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :locale
      t.string :email
      t.string :password
      t.string :salt
      t.string :hash_algorithm_name
      t.integer :hash_iteration
      t.datetime :last_login

      t.timestamps
    end
  end
end
