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

ActiveRecord::Schema.define(version: 2019_11_19_051843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.string "genre"
    t.bigint "admin_id"
  end

  create_table "genres", force: :cascade do |t|
    t.integer "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.string "reservation_length"
    t.datetime "reservation_date"
    t.integer "customer_id"
    t.integer "game_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "game_id"
    t.string "content"
    t.integer "reservation_id"
    t.integer "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "phone_number"
    t.string "img"
    t.string "username"
    t.string "type"
    t.string "auth_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
