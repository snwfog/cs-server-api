# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  company_name = Faker::Company.name
  entry_point = "http://#{company_name.split.sample.downcase}.localhost.com:8080"
  tenant_type = Tenant::TENANT_TYPE.sample
  Tenant.create(name: company_name, entry_point: entry_point, tenant_type: tenant_type)
end

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user_name = Faker::Internet.user_name(first_name)
  locale = %w(en fr)[rand(2)]
  email = Faker::Internet.email(Faker::Internet.user_name("#{first_name} #{last_name}", %w(. _ -)))
  password = Faker::Bitcoin.address
  user = User.create(first_name: first_name, last_name: last_name, username: user_name,
              locale: locale, email: email, password: password)
  user.save
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

users = User.all
roles = Role.all
tenants.each do |tenant|
  tenant.roles << roles.sample(1 + rand(roles.count))
  tenant.save
end
