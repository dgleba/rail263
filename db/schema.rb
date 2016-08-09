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

ActiveRecord::Schema.define(version: 20160809135309) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.float    "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pasenger_lists", force: :cascade do |t|
    t.string   "clocknum"
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "output"
    t.integer  "rental_record_id"
    t.integer  "pasenger_list_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "passengers", ["pasenger_list_id"], name: "index_passengers_on_pasenger_list_id"
  add_index "passengers", ["rental_record_id"], name: "index_passengers_on_rental_record_id"

  create_table "rental_records", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "vehicle_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "lastUpdated"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rental_records", ["customer_id"], name: "index_rental_records_on_customer_id"
  add_index "rental_records", ["vehicle_id"], name: "index_rental_records_on_vehicle_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "veh_reg_no"
    t.string   "category"
    t.string   "name"
    t.string   "desc"
    t.binary   "photo"
    t.decimal  "daily_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
