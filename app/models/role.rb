class Role < ActiveRecord::Base
  belongs_to :tenant, counter_cache: true
  has_and_belongs_to_many :permissions
end
