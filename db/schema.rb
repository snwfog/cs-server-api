# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140624001026) do

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.string   "description_key"
    t.boolean  "system_only"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "used_for_new_account_request"
    t.boolean  "least_privileged"
    t.boolean  "most_privileged"
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_accounts", force: true do |t|
    t.string   "credential_one"
    t.string   "credential_two"
    t.string   "username"
    t.string   "native_type"
    t.string   "custom"
    t.string   "unique_id_for_service"
    t.string   "password"
    t.string   "is_assigned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_connections", force: true do |t|
    t.string   "name"
    t.string   "creation_date"
    t.string   "type"
    t.string   "category"
    t.text     "service_connection_parameter"
    t.datetime "last_usage_record"
    t.boolean  "status_checked"
    t.boolean  "usage_enabled"
    t.boolean  "metrics_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenant_policies", force: true do |t|
    t.boolean  "ldap_self_request"
    t.boolean  "db_self_request"
    t.boolean  "account_request_approval_required"
    t.boolean  "account_request_activation_required"
    t.boolean  "reset_password_on_first_login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: true do |t|
    t.string   "lineage"
    t.string   "name"
    t.string   "hash_algorithm_name"
    t.integer  "hash_iteration"
    t.string   "entry_point"
    t.string   "image"
    t.boolean  "db_authentication"
    t.boolean  "ldap_authentication"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "locale"
    t.string   "email"
    t.string   "password"
    t.string   "salt"
    t.string   "hash_algorithm_name"
    t.integer  "hash_iteration"
    t.datetime "last_login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
