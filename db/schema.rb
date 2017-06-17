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

ActiveRecord::Schema.define(version: 20170617123746) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "phone"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.integer  "price"
    t.string   "price_plan"
    t.string   "postcode"
    t.string   "county"
    t.string   "street_line_one"
    t.string   "street_line_two"
    t.string   "city"
    t.integer  "capacity_standing"
    t.integer  "capacity_sitting"
    t.integer  "size"
    t.integer  "parking_spaces"
    t.integer  "kitchens"
    t.boolean  "disabled_acess"
    t.boolean  "outside_spaces"
    t.integer  "toilets"
    t.integer  "tables"
    t.integer  "chairs"
    t.text     "extra_info"
    t.boolean  "external_catering_allowed"
    t.boolean  "external_alcahool_allowed"
    t.boolean  "inhouse_catering_provided"
    t.boolean  "inhouse_alcahool_provided"
    t.boolean  "storage"
    t.boolean  "air_conditionind"
    t.boolean  "wifi"
    t.boolean  "projector"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "admin_id"
  end

end
