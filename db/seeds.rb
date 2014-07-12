# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  company_name = Faker::Company.name
  entry        = company_name.split(/[^\w]/).reject(&:empty?).sample.downcase
  entry_point  = "http://#{entry}.localhost.com:8080"
  tenant_type  = Tenant::TENANT_TYPE.sample
  Tenant.create(name: company_name, entry_point: entry_point, tenant_type: tenant_type)
end

10.times do
  User.create do |user|
    user.first_name = Faker::Name.first_name
    user.last_name  = Faker::Name.last_name
    user.user_name  = Faker::Internet.user_name(first_name)
    user.locale     = %w(en fr)[rand(2)]
    user.email      = Faker::Internet.email(Faker::Internet.user_name("#{first_name} #{last_name}", %w(. _ -)))
    user.password   = Faker::Bitcoin.address
  end
end

tenants = Tenant.all
User.all.each do |user|
  tenant = tenants.sample
  tenant.users << user
  user.tenant = tenant

  user.save
  tenant.save
end

Role.create(name: "User", description: Faker::Lorem.sentence)
Role.create(name: "Admin", description: Faker::Lorem.sentence)

%w(vm network vpc).each do |entity|
  %w(list read create update delete).each do |operation|
    Permission.create(name: "#{entity}:#{operation}", is_system_only: [true, false].sample)
  end
end

permissions = Permission.all
Role.all.each do |role|
  5.times do
    role.permissions << permissions.sample
  end

  role.save
end

roles = Role.all
tenants.each do |tenant|
  tenant.roles << roles.sample(1 + rand(roles.count))
  tenant.save
end

10.times do
  ServiceAccount.create do |sa|
    sa.username              = Faker::Internet.user_name
    sa.credential_one        = Faker::Bitcoin.address
    sa.credential_two        = Faker::Bitcoin.address
    sa.native_type           = "-1"
    sa.custom                = SecureRandom.uuid
    sa.unique_id_for_service = SecureRandom.uuid
    sa.password              = Faker::Internet.password(6)
    sa.is_assigned           = false
  end
end
