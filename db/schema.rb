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

ActiveRecord::Schema.define(version: 20150409093222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string  "name"
    t.integer "country_id"
  end

  add_index "cities", ["name", "country_id"], name: "index_cities_on_name_and_country_id", unique: true, using: :btree

  create_table "countries", force: true do |t|
    t.string "name"
  end

  create_table "meal_types", force: true do |t|
    t.string "name"
  end

  create_table "reservation_types", force: true do |t|
    t.string "name"
  end

  create_table "reservations", force: true do |t|
    t.integer  "cities_id"
    t.datetime "requested_date"
    t.string   "additional_dates"
    t.integer  "number_of_guests"
    t.integer  "reservation_types_id"
    t.integer  "meal_types_id"
    t.boolean  "alergies"
    t.string   "alergies_text"
    t.integer  "spice_id"
    t.boolean  "alchohol"
    t.integer  "drinks"
    t.boolean   "status"
    t.integer   "user_id"
    t.boolean   "pending"
  end

  create_table "spice_levels", force: true do |t|
    t.string "name"
  end

end
