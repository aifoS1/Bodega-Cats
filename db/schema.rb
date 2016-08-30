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

ActiveRecord::Schema.define(version: 20160830003115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodegas", force: :cascade do |t|
    t.string   "name"
    t.string   "address",    null: false
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.integer  "bodega_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "address"
    t.decimal  "lat"
    t.decimal  "lng"
    t.string   "bodega_name"
  end

  add_index "cats", ["bodega_id"], name: "index_cats_on_bodega_id", using: :btree

  add_foreign_key "cats", "bodegas"
end
