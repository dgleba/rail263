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

ActiveRecord::Schema.define(version: 20160609202451) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.float    "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "description"
    t.boolean  "done"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "jobs", ["project_id"], name: "index_jobs_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rental_records", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "vehicle_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "lastUpdated"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "output"
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
    t.integer  "role_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "salt"
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "veh_reg_no"
    t.string   "category"
    t.string   "desc"
    t.binary   "photo"
    t.decimal  "daily_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
