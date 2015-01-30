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

ActiveRecord::Schema.define(version: 0) do

  create_table "storemembers", force: :cascade do |t|
    t.integer "store_id"
    t.integer "member_id"
  end

  add_index "storemembers", ["member_id"], name: "index_storemembers_on_member_id"
  add_index "storemembers", ["store_id"], name: "index_storemembers_on_store_id"

  create_table "stores", force: :cascade do |t|
    t.integer "store_id"
    t.string  "store_name"
    t.string  "address"
    t.integer "opening"
    t.integer "closing"
    t.integer "phone"
    t.text    "description"
    t.integer "pointsfirst"
    t.integer "pointssecond"
    t.integer "pointsthird"
    t.text    "rewardfirst"
    t.text    "rewardsecond"
    t.text    "rewardthird"
    t.string  "store_t"
  end

  add_index "stores", ["store_id"], name: "index_stores_on_store_id"

  create_table "transactions", force: :cascade do |t|
    t.integer "transaction_id"
    t.integer "store_id"
    t.integer "member_id"
    t.integer "pointsawarded"
    t.integer "pointsre"
  end

  add_index "transactions", ["member_id"], name: "index_transactions_on_member_id"
  add_index "transactions", ["store_id"], name: "index_transactions_on_store_id"
  add_index "transactions", ["transaction_id"], name: "index_transactions_on_transaction_id"

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "member_id"
    t.string  "user_name"
    t.string  "email"
    t.string  "password"
    t.text    "telephone"
    t.string  "homeaddress"
    t.string  "birthday"
    t.integer "age"
    t.string  "gender"
  end

  add_index "users", ["member_id"], name: "index_users_on_member_id"
  add_index "users", ["user_id"], name: "index_users_on_user_id"

end
