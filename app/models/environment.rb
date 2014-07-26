class Environment < ActiveRecord::Base
  MEMBERSHIP = %W(SINGLE ALL MANY)
  bitmask :membership, as: MEMBERSHIP

  belongs_to :tenant
  has_one :service_connection
  has_many :users, through: :tenant

  class << self
    def fake
      create do |env|
        env.name = %W(Development Staging Testing Production).sample
        env.description = Faker::Lorem.sentence
        env.membership = MEMBERSHIP.sample
      end
    end
  end
end
