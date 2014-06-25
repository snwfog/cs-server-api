class User < ActiveRecord::Base
  STATUS = %i(pending_approval pending_activation active disabled locked)

  bitmask :status, :as => STATUS

  has_and_belongs_to_many :roles

  validates_presence_of :first_name, :last_name, :username, :locale, :email, :password
  validates_uniqueness_of :username, :email
end
