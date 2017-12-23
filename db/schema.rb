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

ActiveRecord::Schema.define(version: 20171220174224) do

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
    t.string   "code"
    t.string   "ownername"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "bookings", force: :cascade do |t|
    t.integer  "guests"
    t.time     "time"
    t.date     "date"
    t.integer  "venue_id"
    t.integer  "user_id"
    t.integer  "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time     "bookings"
    t.time     "finish"
  end

  add_index "bookings", ["admin_id"], name: "index_bookings_on_admin_id"
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"
  add_index "bookings", ["venue_id"], name: "index_bookings_on_venue_id"

  create_table "chats", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "admin_id"
    t.integer  "booking_id"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chats", ["admin_id"], name: "index_chats_on_admin_id"
  add_index "chats", ["booking_id"], name: "index_chats_on_booking_id"
  add_index "chats", ["user_id"], name: "index_chats_on_user_id"
  add_index "chats", ["venue_id"], name: "index_chats_on_venue_id"

  create_table "chisoms", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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

  add_index "chisoms", ["email"], name: "index_chisoms_on_email", unique: true
  add_index "chisoms", ["reset_password_token"], name: "index_chisoms_on_reset_password_token", unique: true

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "comments", ["venue_id"], name: "index_comments_on_venue_id"

  create_table "finals", force: :cascade do |t|
    t.integer  "admin_id"
    t.integer  "user_id"
    t.integer  "booking_id"
    t.integer  "full_money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "finals", ["admin_id"], name: "index_finals_on_admin_id"
  add_index "finals", ["booking_id"], name: "index_finals_on_booking_id"
  add_index "finals", ["user_id"], name: "index_finals_on_user_id"

  create_table "offers", force: :cascade do |t|
    t.integer  "admin_id"
    t.integer  "booking_id"
    t.integer  "user_id"
    t.integer  "deposit_price"
    t.time     "time_start"
    t.time     "time_end"
    t.date     "deposit_date"
    t.integer  "deposit_guests"
    t.text     "deposit_tandc"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "offers", ["admin_id"], name: "index_offers_on_admin_id"
  add_index "offers", ["booking_id"], name: "index_offers_on_booking_id"
  add_index "offers", ["user_id"], name: "index_offers_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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
    t.string   "name"
    t.string   "number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

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
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "verified"
  end

end
