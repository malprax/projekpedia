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

ActiveRecord::Schema.define(version: 20160911050844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applyjobs", force: :cascade do |t|
    t.string   "freelance_id"
    t.float    "price"
    t.string   "estimate"
    t.text     "applyletter"
    t.float    "fee"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "biographies", force: :cascade do |t|
    t.string   "user_id"
    t.string   "city"
    t.string   "address"
    t.string   "image"
    t.string   "ability"
    t.string   "geolocation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "postjobs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "client_id"
    t.string   "timestamp"
    t.string   "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end