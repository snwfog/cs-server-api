class User < ActiveRecord::Base
  validates :first_name, uniqueness: true
end
