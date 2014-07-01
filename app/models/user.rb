class User < ActiveRecord::Base
  STATUS = %i(pending_approval pending_activation active disabled locked)
  bitmask :status, :as => STATUS

  belongs_to :tenant, inverse_of: :users, counter_cache: true
  has_many :roles, through: :tenant
  has_many :service_accounts

  validates_presence_of :first_name, :last_name, :username, :locale, :email, :password
  validates_uniqueness_of :username, :email

  class << self
    def create_new_user
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name
      user_name = Faker::Internet.user_name(first_name)
      locale = %w(en fr)[rand(2)]
      email = Faker::Internet.email(Faker::Internet.user_name("#{first_name} #{last_name}", %w(. _ -)))
      password = Faker::Bitcoin.address
      User.create(first_name: first_name, last_name: last_name, username: user_name,
                         locale: locale, email: email, password: password)
    end
  end
end
