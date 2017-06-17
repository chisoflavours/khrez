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

ActiveRecord::Schema.define(version: 20170617104804) do

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
  end

end
