# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_28_200136) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kitchens", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "address"
    t.integer "daily_rate"
    t.string "kitchen_type"
    t.text "description"
    t.boolean "has_parking"
    t.boolean "has_fire_safety"
    t.boolean "has_refrigeration"
    t.string "storage_type"
    t.boolean "has_oven"
    t.boolean "has_stove"
    t.boolean "has_fryer"
    t.boolean "has_dishwasher"
    t.boolean "has_cookware"
    t.boolean "has_cutlery"
    t.boolean "availability"
    t.integer "prep_tables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_kitchens_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.float "total_price"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "kitchen_id", null: false
    t.index ["kitchen_id"], name: "index_reservations_on_kitchen_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "location"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "kitchens", "users"
  add_foreign_key "reservations", "kitchens"
  add_foreign_key "reservations", "users"

end
