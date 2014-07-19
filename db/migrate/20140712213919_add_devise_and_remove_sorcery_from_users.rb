class AddDeviseAndRemoveSorceryFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :last_login_from_ip_address
    remove_column :users, :last_activity_at
    remove_column :users, :last_logout_at
    remove_column :users, :last_login_at
    remove_column :users, :activation_token_expires_at
    remove_column :users, :activation_token
    remove_column :users, :activation_state
    remove_column :users, :reset_password_email_sent_at
    remove_column :users, :reset_password_token_expires_at
    remove_column :users, :reset_password_token
    remove_column :users, :remember_me_token_expires_at
    remove_column :users, :remember_me_token

    # Database authentication
    change_column :users, :email, :string, null: false, default: ''
    add_column :users, :encrypted_password, :string, null: false, default: ''

    # Recoverable
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime

    # Rememberable
    add_column :users, :remember_created_at, :datetime

    ## Trackable
    add_column :users, :sign_in_count, :integer, default: 0
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :string
    add_column :users, :last_sign_in_ip, :string

    # Confirmable
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string

    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token, unique: true






  end
end
