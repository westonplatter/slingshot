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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120813005821) do

  create_table "area_choices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "devices", :force => true do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "model"
    t.string   "color"
    t.integer  "person_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "computer_username"
    t.string   "computer_password"
    t.string   "os"
  end

  add_index "devices", ["person_id"], :name => "index_devices_on_person_id"

  create_table "eleazar_account_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.time     "event_time"
    t.boolean  "drop_off"
    t.integer  "scheduleable_id"
    t.string   "scheduleable_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "objective"
  end

  create_table "people", :force => true do |t|
    t.string  "email"
    t.string  "firstname"
    t.string  "lastname"
    t.string  "guid"
    t.string  "username"
    t.string  "cell"
    t.string  "vpn_password"
    t.integer "region_sending"
    t.string  "city"
    t.string  "email_client"
    t.string  "faceook_name"
    t.string  "google_plugs_name"
    t.boolean "admin"
    t.integer "region_destination"
    t.boolean "married"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.boolean  "sending"
    t.boolean  "destination"
    t.integer  "person_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vpn_account_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vpns", :force => true do |t|
    t.string   "password"
    t.integer  "person_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "simple_password"
    t.string   "area"
    t.string   "account_group"
    t.string   "eleazar_account_type"
  end

  add_index "vpns", ["person_id"], :name => "index_vpns_on_person_id"

end
