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

ActiveRecord::Schema.define(version: 20151012061735) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "sex",        limit: 4,   default: 0
    t.integer  "status",     limit: 4,   default: 0
    t.integer  "emotion",    limit: 4,   default: 0
    t.date     "birthday"
    t.integer  "role",       limit: 4,   default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "actions", force: :cascade do |t|
    t.datetime "recorded"
    t.integer  "account_id",     limit: 4
    t.integer  "temperature",    limit: 4
    t.integer  "huminity",       limit: 4
    t.integer  "wing",           limit: 4
    t.integer  "building",       limit: 4
    t.integer  "emergency",      limit: 4
    t.integer  "userType",       limit: 4
    t.integer  "numStep",        limit: 4
    t.float    "speed_new",      limit: 24
    t.float    "speed_old",      limit: 24
    t.integer  "shake",          limit: 4
    t.integer  "proximity",      limit: 4
    t.float    "latitude",       limit: 24
    t.float    "longitude",      limit: 24
    t.float    "heading",        limit: 24
    t.integer  "brightness",     limit: 4
    t.integer  "batteryState",   limit: 4
    t.float    "acceleration_x", limit: 24
    t.float    "acceleration_y", limit: 24
    t.float    "acceleration_z", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.integer  "news",       limit: 4
    t.integer  "game",       limit: 4
    t.integer  "book",       limit: 4
    t.integer  "food",       limit: 4
    t.integer  "family",     limit: 4
    t.integer  "area",       limit: 4
    t.datetime "ingoing"
    t.datetime "outgoing"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "houses", force: :cascade do |t|
    t.datetime "recorded"
    t.integer  "elec_sts",   limit: 4
    t.integer  "gas_sts",    limit: 4
    t.integer  "water_sts",  limit: 4
    t.integer  "unknown",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
