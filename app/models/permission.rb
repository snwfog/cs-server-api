class Permission < ActiveRecord::Base
  has_and_belongs_to_many :roles

  def description_key
    "local.#{name}.description"
  end
end
