class Tenant < ActiveRecord::Base
  TENANT_TYPE = %i(organization department)

  bitmask :tenant_type, :as => TENANT_TYPE

  has_many :users
  has_many :roles
  has_many :service_accounts
end
