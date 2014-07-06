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

ActiveRecord::Schema.define(version: 20140706024256) do

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.string   "description_key"
    t.boolean  "is_system_only"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_roles", id: false, force: true do |t|
    t.integer "role_id",       null: false
    t.integer "permission_id", null: false
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "is_used_for_new_account_request"
    t.boolean  "is_least_privileged"
    t.boolean  "is_most_privileged"
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenant_id"
  end

  add_index "roles", ["tenant_id"], name: "index_roles_on_tenant_id", using: :btree

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
    t.text     "parameter"
    t.datetime "last_usage_record"
    t.boolean  "is_status_checked"
    t.boolean  "is_usage_enabled"
    t.boolean  "is_metrics_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenant_policies", force: true do |t|
    t.boolean  "is_ldap_self_request"
    t.boolean  "is_db_self_request"
    t.boolean  "is_account_request_approval_required"
    t.boolean  "is_account_request_activation_required"
    t.boolean  "is_reset_password_on_first_login"
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
    t.boolean  "is_db_authentication"
    t.boolean  "is_ldap_authentication"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenant_type"
    t.integer  "users_count",            default: 0, null: false
    t.integer  "roles_count",            default: 0, null: false
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
    t.integer  "status"
    t.string   "approval_token"
    t.integer  "tenant_id"
    t.text     "preferences"
  end

  add_index "users", ["tenant_id"], name: "index_users_on_tenant_id", using: :btree

end
