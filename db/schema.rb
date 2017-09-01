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

ActiveRecord::Schema.define(version: 20170901121636) do

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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["venue_id"], name: "index_comments_on_venue_id"

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
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

end
