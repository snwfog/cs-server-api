class User < ActiveRecord::Base
  STATUS = %i(pending_approval pending_activation active disabled locked)
  bitmask :status, :as => STATUS
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :tenant
  has_many :roles, through: :tenant
  has_many :service_accounts

  validates_presence_of :first_name, :last_name, :username, :locale, :email, :password
  validates_uniqueness_of :username, :email
end
