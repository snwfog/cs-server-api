# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  tenant = Tenant.create do |tenant|
    company_name                  = Faker::Company.name
    entry                         = company_name.split(/[^\w]/).reject(&:empty?).sample.downcase
    tenant.name                   = company_name
    tenant.hash_algorithm_name    = %W(SHA1 MD5).sample
    tenant.hash_iteration         = rand 100
    tenant.entry_point            = "http://#{entry}.localhost.com:8080"
    tenant.tenant_type            = Tenant::TENANT_TYPE.sample
    tenant.is_db_authentication   = rand(2) == 0
    tenant.is_ldap_authentication = !tenant.is_db_authentication
  end

  (1..20).to_a.sample.times do
    tenant.users.create do |user|
      user_first_name = Faker::Name.first_name
      user_last_name  = Faker::Name.last_name
      user.first_name = user_first_name
      user.last_name  = user_last_name
      user.username   = Faker::Internet.user_name(user_first_name)
      user.locale     = %W(en fr).sample
      user.email      = Faker::Internet.email(Faker::Internet.user_name("#{user_first_name} #{user_last_name}", %w(. _ -)))
      user.password   = Faker::Bitcoin.address
    end
  end
end

# Role.create(name: "User", description: Faker::Lorem.sentence)
# Role.create(name: "Admin", description: Faker::Lorem.sentence)
#
# %w(vm network vpc).each do |entity|
#   %w(list read create update delete).each do |operation|
#     Permission.create(name: "#{entity}:#{operation}", is_system_only: [true, false].sample)
#   end
# end
#
# permissions = Permission.all
# Role.all.each do |role|
#   5.times do
#     role.permissions << permissions.sample
#   end
#
#   role.save
# end
#
# roles = Role.all
# tenants.each do |tenant|
#   tenant.roles << roles.sample(1 + rand(roles.count))
#   tenant.save
# end
#
# 10.times do
#   ServiceAccount.create do |sa|
#     sa.username              = Faker::Internet.user_name
#     sa.credential_one        = Faker::Bitcoin.address
#     sa.credential_two        = Faker::Bitcoin.address
#     sa.native_type           = "-1"
#     sa.custom                = SecureRandom.uuid
#     sa.unique_id_for_service = SecureRandom.uuid
#     sa.password              = Faker::Internet.password(6)
#     sa.is_assigned           = false
#   end
# end
