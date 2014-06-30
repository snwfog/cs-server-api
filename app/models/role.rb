class Role < ActiveRecord::Base
  belongs_to :tenant

  has_and_belongs_to_many :permissions
end
