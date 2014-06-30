class User < ActiveRecord::Base
  STATUS = %i(pending_approval pending_activation active disabled locked)
  bitmask :status, :as => STATUS

  belongs_to :tenant
  has_many :roles, through: :tenant
  has_many :service_accounts

  validates_presence_of :first_name, :last_name, :username, :locale, :email, :password
  validates_uniqueness_of :username, :email
end
