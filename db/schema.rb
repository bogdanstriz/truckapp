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

ActiveRecord::Schema.define(version: 2020_08_30_113100) do

  create_table "accounts", force: :cascade do |t|
    t.float "total"
    t.float "in"
    t.float "out"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.float "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "dob"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loads", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.string "type"
    t.float "amount"
    t.string "location"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "truck_id", null: false
    t.integer "trailer_id", null: false
    t.integer "unit_id", null: false
    t.index ["trailer_id"], name: "index_repairs_on_trailer_id"
    t.index ["truck_id"], name: "index_repairs_on_truck_id"
    t.index ["unit_id"], name: "index_repairs_on_unit_id"
  end

  create_table "trailers", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "type"
    t.integer "year"
    t.integer "mileage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "truck_id", null: false
    t.index ["truck_id"], name: "index_trailers_on_truck_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.float "amount"
    t.date "date"
    t.boolean "outstanding"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "account_id", null: false
    t.index ["account_id"], name: "index_transactions_on_account_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.integer "mileage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "account_id", null: false
    t.index ["account_id"], name: "index_trucks_on_account_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.float "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "trailer_id", null: false
    t.index ["trailer_id"], name: "index_units_on_trailer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "repairs", "trailers"
  add_foreign_key "repairs", "trucks"
  add_foreign_key "repairs", "units"
  add_foreign_key "trailers", "trucks"
  add_foreign_key "transactions", "accounts"
  add_foreign_key "trucks", "accounts"
  add_foreign_key "units", "trailers"
end
