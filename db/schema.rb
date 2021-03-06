# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_29_172234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "painting_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["painting_id"], name: "index_favorites_on_painting_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "painters", force: :cascade do |t|
    t.string "name"
    t.string "years"
    t.string "genre"
    t.string "nationality"
    t.text "bio"
    t.integer "painting_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "portrait"
  end

  create_table "paintings", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "painter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "year"
    t.index ["painter_id"], name: "index_paintings_on_painter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "paintings"
  add_foreign_key "favorites", "users"
  add_foreign_key "paintings", "painters"
end
