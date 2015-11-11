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

ActiveRecord::Schema.define(version: 20151107120615) do

  create_table "price_items", force: :cascade do |t|
    t.string   "title"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_items_template_positions", id: false, force: :cascade do |t|
    t.integer "price_item_id",        null: false
    t.integer "template_position_id", null: false
  end

  add_index "price_items_template_positions", ["price_item_id"], name: "index_price_items_template_positions_on_price_item_id"
  add_index "price_items_template_positions", ["template_position_id"], name: "index_price_items_template_positions_on_template_position_id"

  create_table "proposal_positions", force: :cascade do |t|
    t.integer  "proposal_id"
    t.integer  "price_item_id"
    t.integer  "template_position_id"
    t.integer  "price"
    t.integer  "change_marker"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.string   "title"
    t.integer  "template_id"
    t.integer  "user_id"
    t.integer  "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "temlpates", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "template_positions", force: :cascade do |t|
    t.string   "title"
    t.integer  "template_id"
    t.integer  "price_item_id"
    t.integer  "template_item_id"
    t.integer  "order"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.string   "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
