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

ActiveRecord::Schema.define(version: 2019_11_21_214753) do

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.boolean "is_drink"
    t.float "price"
    t.datetime "expiration_date"
    t.integer "fridge_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fridge_id"], name: "index_food_items_on_fridge_id"
  end

  create_table "fridges", force: :cascade do |t|
    t.string "name"
    t.integer "food_capacity"
    t.integer "drink_capacity"
    t.boolean "is_full"
    t.float "total_items_value"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_fridges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.float "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "food_items", "fridges"
  add_foreign_key "fridges", "users"
end
