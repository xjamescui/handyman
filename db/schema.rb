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

ActiveRecord::Schema.define(version: 20140704154627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rate_tables", force: true do |t|
    t.integer  "rentable_id"
    t.decimal  "hourly"
    t.decimal  "daily"
    t.decimal  "weekly"
    t.decimal  "late_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rate_tables", ["rentable_id"], name: "index_rate_tables_on_rentable_id", using: :btree

  create_table "rent_items", force: true do |t|
    t.integer  "rent_transaction_id"
    t.integer  "rentable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rent_transactions", force: true do |t|
    t.datetime "date_booked"
    t.datetime "date_start"
    t.datetime "date_end"
    t.integer  "planned_duration"
    t.datetime "date_delivered"
    t.datetime "date_returned"
    t.boolean  "cancelled"
    t.decimal  "rent_price"
    t.decimal  "actual_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentables", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "quantity"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_name"
  end

end
