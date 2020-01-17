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

ActiveRecord::Schema.define(version: 20200116190849) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "member_since"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true

  create_table "occupied_rooms", force: :cascade do |t|
    t.datetime "check_in"
    t.datetime "check_out"
    t.integer  "room_id"
    t.integer  "reservation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "occupied_rooms", ["reservation_id"], name: "index_occupied_rooms_on_reservation_id"
  add_index "occupied_rooms", ["room_id"], name: "index_occupied_rooms_on_room_id"

  create_table "reservations", force: :cascade do |t|
    t.date     "date_in"
    t.date     "date_out"
    t.string   "made_by"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reservations", ["customer_id"], name: "index_reservations_on_customer_id"

  create_table "reserved_rooms", force: :cascade do |t|
    t.integer  "number_of_rooms"
    t.integer  "roomtype_id"
    t.integer  "reservation_id"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "reserved_rooms", ["reservation_id"], name: "index_reserved_rooms_on_reservation_id"
  add_index "reserved_rooms", ["roomtype_id"], name: "index_reserved_rooms_on_roomtype_id"

  create_table "room_types", force: :cascade do |t|
    t.string   "description"
    t.integer  "max_capacity"
    t.decimal  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "number"
    t.string   "name"
    t.string   "status"
    t.integer  "room_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rooms", ["room_type_id"], name: "index_rooms_on_room_type_id"

end
