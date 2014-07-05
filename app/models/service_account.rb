class ServiceAccount < ActiveRecord::Base
  LOCAL_ACCOUNT_TYPE = %i(DEFAULT TENANT ENVIRONMENT USER)
end
