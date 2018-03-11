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

ActiveRecord::Schema.define(version: 20180311202231) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_menu", force: :cascade do |t|
    t.integer  "parent_id",  limit: 4,  default: 0, null: false
    t.integer  "order",      limit: 4,  default: 0, null: false
    t.string   "title",      limit: 50,             null: false
    t.string   "icon",       limit: 50,             null: false
    t.string   "uri",        limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_operation_log", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,     null: false
    t.string   "path",       limit: 255,   null: false
    t.string   "method",     limit: 10,    null: false
    t.string   "ip",         limit: 15,    null: false
    t.text     "input",      limit: 65535, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_operation_log", ["user_id"], name: "admin_operation_log_user_id_index", using: :btree

  create_table "admin_permissions", force: :cascade do |t|
    t.string   "name",        limit: 50,    null: false
    t.string   "slug",        limit: 50,    null: false
    t.string   "http_method", limit: 255
    t.text     "http_path",   limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_permissions", ["name"], name: "admin_permissions_name_unique", unique: true, using: :btree

  create_table "admin_role_menu", id: false, force: :cascade do |t|
    t.integer  "role_id",    limit: 4, null: false
    t.integer  "menu_id",    limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_role_menu", ["role_id", "menu_id"], name: "admin_role_menu_role_id_menu_id_index", using: :btree

  create_table "admin_role_permissions", id: false, force: :cascade do |t|
    t.integer  "role_id",       limit: 4, null: false
    t.integer  "permission_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_role_permissions", ["role_id", "permission_id"], name: "admin_role_permissions_role_id_permission_id_index", using: :btree

  create_table "admin_role_users", id: false, force: :cascade do |t|
    t.integer  "role_id",    limit: 4, null: false
    t.integer  "user_id",    limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_role_users", ["role_id", "user_id"], name: "admin_role_users_role_id_user_id_index", using: :btree

  create_table "admin_roles", force: :cascade do |t|
    t.string   "name",       limit: 50, null: false
    t.string   "slug",       limit: 50, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_roles", ["name"], name: "admin_roles_name_unique", unique: true, using: :btree

  create_table "admin_user_permissions", id: false, force: :cascade do |t|
    t.integer  "user_id",       limit: 4, null: false
    t.integer  "permission_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_user_permissions", ["user_id", "permission_id"], name: "admin_user_permissions_user_id_permission_id_index", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "username",       limit: 190, null: false
    t.string   "password",       limit: 60,  null: false
    t.string   "name",           limit: 255, null: false
    t.string   "avatar",         limit: 255
    t.string   "remember_token", limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["username"], name: "admin_users_username_unique", unique: true, using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.string   "data_fingerprint",  limit: 255
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type", using: :btree

  create_table "migrations", force: :cascade do |t|
    t.string  "migration", limit: 255, null: false
    t.integer "batch",     limit: 4,   null: false
  end

  create_table "password_resets", id: false, force: :cascade do |t|
    t.string   "email",      limit: 255, null: false
    t.string   "token",      limit: 255, null: false
    t.datetime "created_at"
  end

  add_index "password_resets", ["email"], name: "password_resets_email_index", length: {"email"=>191}, using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "type",           limit: 4,     default: 0,      null: false
    t.string   "title",          limit: 255,   default: "",     null: false
    t.text     "description",    limit: 65535,                  null: false
    t.text     "content",        limit: 65535
    t.string   "url",            limit: 255
    t.string   "source",         limit: 255,   default: "NuLL"
    t.string   "post_unique_id", limit: 191,                    null: false
    t.datetime "pubdate",                                       null: false
    t.integer  "real_number",    limit: 4
    t.integer  "fake_number",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "posts", ["post_unique_id"], name: "posts_post_unique_id_unique", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
