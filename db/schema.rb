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

ActiveRecord::Schema.define(version: 20140917164904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bus_lines", force: true do |t|
    t.string   "line_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_stations", force: true do |t|
    t.string   "station_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_stops", force: true do |t|
    t.integer  "bus_line_id"
    t.integer  "bus_station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "stop_time"
  end

end
