class AddNullFalseToUsersPassword < ActiveRecord::Migration
  def up
    say_with_time 'Removing all null password on password field' do
      User.all.each do |user|
        user.password = ''
        user.save
      end
    end

    change_column :users, :password, :string, :null => false
  end

  def down
    change_column :users, :password, :string, default: nil
  end
end
