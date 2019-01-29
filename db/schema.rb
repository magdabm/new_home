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

ActiveRecord::Schema.define(version: 2019_01_23_232151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "price", null: false
    t.integer "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area", null: false
    t.bigint "user_id"
    t.integer "status", null: false
    t.bigint "district_id"
    t.json "photos"
    t.integer "factor", default: 0, null: false
    t.index ["district_id"], name: "index_offers_on_district_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "offers_rooms", id: false, force: :cascade do |t|
    t.bigint "offer_id", null: false
    t.bigint "room_id", null: false
    t.index ["offer_id", "room_id"], name: "index_offers_rooms_on_offer_id_and_room_id"
    t.index ["room_id", "offer_id"], name: "index_offers_rooms_on_room_id_and_offer_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content", null: false
    t.string "nick", null: false
    t.bigint "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["offer_id"], name: "index_questions_on_offer_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "offers", "districts"
  add_foreign_key "offers", "users"
  add_foreign_key "questions", "offers"
  add_foreign_key "questions", "users"
end
