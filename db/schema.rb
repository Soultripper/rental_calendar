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

ActiveRecord::Schema.define(version: 20141118205235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar_bookings", force: true do |t|
    t.integer  "unit_id"
    t.integer  "guest_id"
    t.decimal  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency"
  end

  create_table "client_calendars", force: true do |t|
    t.integer  "client_id"
    t.integer  "unique_date"
    t.integer  "booking_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
